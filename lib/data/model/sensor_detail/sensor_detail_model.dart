import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_detail_model.freezed.dart';

part 'sensor_detail_model.g.dart';

@freezed
abstract class SensorDetailDataModel with _$SensorDetailDataModel {
  const factory SensorDetailDataModel({
    required String? id,
    required String? location,
    required String? status,
    required String? type,
    @JsonKey(name: "last_updated") required String? lastUpdated,
    required Summary summary,
    @JsonKey(name: "time_series_data") required TimeSeriesData timeSeriesData,
    required List<Alert> alerts,
    @JsonKey(name: "raw_data") required List<RawData> rawData,
  }) = _SensorDetailDataModel;

  factory SensorDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$SensorDetailDataModelFromJson(json);
}

@freezed
abstract class Summary with _$Summary {
  const factory Summary({
    required double temperature,
    required double humidity,
    required double pressure,
    required double anomaly,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}

@freezed
abstract class TimeSeriesData with _$TimeSeriesData {
  const factory TimeSeriesData({
    required List<TimeValuePair> temperature,
    required List<TimeValuePair> humidity,
    required List<TimeValuePair> pressure,
  }) = _TimeSeriesData;

  factory TimeSeriesData.fromJson(Map<String, dynamic> json) =>
      _$TimeSeriesDataFromJson(json);
}

@freezed
abstract class TimeValuePair with _$TimeValuePair {
  const factory TimeValuePair({required String? time, required double value}) =
      _TimeValuePair;

  factory TimeValuePair.fromJson(Map<String, dynamic> json) =>
      _$TimeValuePairFromJson(json);
}

@freezed
abstract class Alert with _$Alert {
  const factory Alert({
    required String? time,
    required String? message,
    required String? level,
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}

@freezed
abstract class RawData with _$RawData {
  const factory RawData({
    required String? timestamp,
    required double temperature,
    required double humidity,
    required double pressure,
  }) = _RawData;

  factory RawData.fromJson(Map<String, dynamic> json) =>
      _$RawDataFromJson(json);
}
