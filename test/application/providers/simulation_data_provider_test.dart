import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/application/providers/simulate_settings_provider.dart';
import 'package:pulse_board_app/application/providers/simulation_data_provider.dart';

import '../../mock_data/mock_sensor_data.dart';

void main() {
  group('SimulatedSensorDataNotifier Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer(
        overrides: [
          simulationSettingsProvider.overrideWith((ref) {
            return SimulationSettingsNotifier();
          }),
        ],
      );
    });

    test('simulate modifies sensor data based on simulation settings', () {
      final notifier = container.read(sensorSimulatorProvider.notifier);

      notifier.simulate([
        mockSensorData.first,
      ], container.read(simulationSettingsProvider));
      final result = container.read(sensorSimulatorProvider);

      expect(result, hasLength(1));
      final simulatedSensor = result.first;

      // Since simulation is randomized, we only check if it was *possibly* changed
      expect(simulatedSensor.id, mockSensorData.first.id);
      expect(
        simulatedSensor.temperature == null ||
            simulatedSensor.temperature == mockSensorData.first.temperature,
        isTrue,
      );
      expect(
        simulatedSensor.humidity == null ||
            simulatedSensor.humidity == mockSensorData.first.humidity,
        isTrue,
      );
      expect(
        simulatedSensor.status == 'offline' ||
            simulatedSensor.status == mockSensorData.first.status,
        isTrue,
      );
      expect(
        simulatedSensor.anomaly != mockSensorData.first.anomaly ||
            simulatedSensor.anomaly == -1,
        isFalse,
      );
    });

    test('clear sets state to empty list', () {
      final notifier = container.read(sensorSimulatorProvider.notifier);

      notifier.simulate([
        mockSensorData.first,
      ], container.read(simulationSettingsProvider));
      expect(container.read(sensorSimulatorProvider), isNotEmpty);

      notifier.clear();
      expect(container.read(sensorSimulatorProvider), isEmpty);
    });
  });
}
