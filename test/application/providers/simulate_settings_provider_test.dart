import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/application/providers/simulate_settings_provider.dart';
import 'package:pulse_board_app/data/model/simulate_setting/simulate_settings_model.dart';

void main() {
  group('SimulationSettingsNotifier Tests', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    test('Initial state is default SimulateSettingsModel', () {
      final state = container.read(simulationSettingsProvider);
      expect(state, const SimulateSettingsModel());
    });

    test('toggleOffline updates simulateOffline correctly', () {
      final notifier = container.read(simulationSettingsProvider.notifier);

      notifier.toggleOffline();
      expect(container.read(simulationSettingsProvider).simulateOffline, true);

      notifier.toggleOffline();
      expect(container.read(simulationSettingsProvider).simulateOffline, false);
    });

    test('toggleNullTemperature updates simulateNullTemperature correctly', () {
      final notifier = container.read(simulationSettingsProvider.notifier);

      notifier.toggleNullTemperature();
      expect(
        container.read(simulationSettingsProvider).simulateNullTemperature,
        true,
      );

      notifier.toggleNullTemperature();
      expect(
        container.read(simulationSettingsProvider).simulateNullTemperature,
        false,
      );
    });

    test('toggleNullHumidity updates simulateNullHumidity correctly', () {
      final notifier = container.read(simulationSettingsProvider.notifier);

      notifier.toggleNullHumidity();
      expect(
        container.read(simulationSettingsProvider).simulateNullHumidity,
        true,
      );

      notifier.toggleNullHumidity();
      expect(
        container.read(simulationSettingsProvider).simulateNullHumidity,
        false,
      );
    });

    test('toggleHighAnomaly updates simulateHighAnomaly correctly', () {
      final notifier = container.read(simulationSettingsProvider.notifier);

      notifier.toggleHighAnomaly();
      expect(
        container.read(simulationSettingsProvider).simulateHighAnomaly,
        true,
      );

      notifier.toggleHighAnomaly();
      expect(
        container.read(simulationSettingsProvider).simulateHighAnomaly,
        false,
      );
    });

    test('reset sets all values to default', () {
      final notifier = container.read(simulationSettingsProvider.notifier);

      notifier.toggleOffline();
      notifier.toggleNullTemperature();
      notifier.toggleNullHumidity();
      notifier.toggleHighAnomaly();

      notifier.reset();

      final state = container.read(simulationSettingsProvider);
      expect(state, const SimulateSettingsModel());
    });
  });
}
