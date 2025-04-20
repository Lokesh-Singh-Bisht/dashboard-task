import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/application/providers/simulate_settings_provider.dart';
import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';
import 'package:pulse_board_app/data/model/simulate_setting/simulate_settings_model.dart';

class SimulatedSensorDataNotifier extends StateNotifier<List<SensorDataModel>> {
  final Ref ref;

  SimulatedSensorDataNotifier(this.ref) : super([]);

  void simulate(
    List<SensorDataModel> originalData,
    SimulateSettingsModel settings,
  ) {
    final settings = ref.read(simulationSettingsProvider);
    final random = Random();

    final simulated =
        originalData.map((sensor) {
          String newStatus = sensor.status;
          double? temp = sensor.temperature;
          double? humidity = sensor.humidity;
          double? pressure = sensor.pressure;
          double anomaly = sensor.anomaly;

          // Simulate Offline
          if (settings.simulateOffline && random.nextBool()) {
            newStatus = 'offline';
            temp = null;
            humidity = null;
            pressure = 100 + random.nextInt(200).toDouble();
            anomaly = -1;
          }

          // Simulate Null Temperature
          if (settings.simulateNullTemperature && random.nextBool()) {
            temp = null;
          }

          // Simulate Null Humidity
          if (settings.simulateNullHumidity && random.nextBool()) {
            humidity = null;
          }

          // Simulate High Anomaly
          if (settings.simulateHighAnomaly && random.nextBool()) {
            anomaly = 75 + random.nextInt(25).toDouble();
          }

          return sensor.copyWith(
            status: newStatus,
            temperature: temp,
            humidity: humidity,
            anomaly: anomaly,
            pressure: pressure,
          );
        }).toList();

    state = simulated;
  }

  void clear() => state = [];
}

final sensorSimulatorProvider =
    StateNotifierProvider<SimulatedSensorDataNotifier, List<SensorDataModel>>(
      (ref) => SimulatedSensorDataNotifier(ref),
    );
