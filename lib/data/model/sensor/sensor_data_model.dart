import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_data_model.freezed.dart';

part 'sensor_data_model.g.dart';

@freezed
abstract class SensorDataModel with _$SensorDataModel {
  const factory SensorDataModel({
    required String id,
    required String location,
    required String? time,
    required double? temperature,
    required double? humidity,
    required double? pressure,
    required double anomaly,
    required String status,
  }) = _SensorDataModel;

  factory SensorDataModel.fromJson(Map<String, dynamic> json) =>
      _$SensorDataModelFromJson(json);
}
