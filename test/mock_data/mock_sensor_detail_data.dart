import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';

final mockTestSensorDetailData = SensorDetailDataModel(
  id: 'sensor-1',
  location: 'Warehouse A',
  type: 'Temperature',
  status: 'active',
  lastUpdated: DateTime.now().toIso8601String(),
  summary: Summary(
    temperature: 24.5,
    humidity: 60,
    pressure: 1012,
    anomaly: 12,
  ),
  timeSeriesData: TimeSeriesData(
    temperature: [
      TimeValuePair(
        time:
        DateTime.now().subtract(Duration(minutes: 2)).toIso8601String(),
        value: 24.0,
      ),
      TimeValuePair(time: DateTime.now().toIso8601String(), value: 24.5),
    ],
    humidity: [
      TimeValuePair(
        time:
        DateTime.now().subtract(Duration(minutes: 2)).toIso8601String(),
        value: 58,
      ),
      TimeValuePair(time: DateTime.now().toIso8601String(), value: 60),
    ],
    pressure: [
      TimeValuePair(
        time:
        DateTime.now().subtract(Duration(minutes: 2)).toIso8601String(),
        value: 1011,
      ),
      TimeValuePair(time: DateTime.now().toIso8601String(), value: 1012),
    ],
  ),
  alerts: [
    Alert(
      time: DateTime.now().toIso8601String(),
      message: "High temperature",
      level: "warning",
    ),
  ],
  rawData: [
    RawData(
      timestamp: DateTime.now().toIso8601String(),
      temperature: 24.5,
      humidity: 60,
      pressure: 1012,
    ),
  ],
);
