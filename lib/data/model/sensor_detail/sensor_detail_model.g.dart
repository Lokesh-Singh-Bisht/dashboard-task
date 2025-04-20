// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SensorDetailDataModel _$SensorDetailDataModelFromJson(
  Map<String, dynamic> json,
) => _SensorDetailDataModel(
  id: json['id'] as String?,
  location: json['location'] as String?,
  status: json['status'] as String?,
  type: json['type'] as String?,
  lastUpdated: json['last_updated'] as String?,
  summary: Summary.fromJson(json['summary'] as Map<String, dynamic>),
  timeSeriesData: TimeSeriesData.fromJson(
    json['time_series_data'] as Map<String, dynamic>,
  ),
  alerts:
      (json['alerts'] as List<dynamic>)
          .map((e) => Alert.fromJson(e as Map<String, dynamic>))
          .toList(),
  rawData:
      (json['raw_data'] as List<dynamic>)
          .map((e) => RawData.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SensorDetailDataModelToJson(
  _SensorDetailDataModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'location': instance.location,
  'status': instance.status,
  'type': instance.type,
  'last_updated': instance.lastUpdated,
  'summary': instance.summary,
  'time_series_data': instance.timeSeriesData,
  'alerts': instance.alerts,
  'raw_data': instance.rawData,
};

_Summary _$SummaryFromJson(Map<String, dynamic> json) => _Summary(
  temperature: (json['temperature'] as num).toDouble(),
  humidity: (json['humidity'] as num).toDouble(),
  pressure: (json['pressure'] as num).toDouble(),
  anomaly: (json['anomaly'] as num).toDouble(),
);

Map<String, dynamic> _$SummaryToJson(_Summary instance) => <String, dynamic>{
  'temperature': instance.temperature,
  'humidity': instance.humidity,
  'pressure': instance.pressure,
  'anomaly': instance.anomaly,
};

_TimeSeriesData _$TimeSeriesDataFromJson(Map<String, dynamic> json) =>
    _TimeSeriesData(
      temperature:
          (json['temperature'] as List<dynamic>)
              .map((e) => TimeValuePair.fromJson(e as Map<String, dynamic>))
              .toList(),
      humidity:
          (json['humidity'] as List<dynamic>)
              .map((e) => TimeValuePair.fromJson(e as Map<String, dynamic>))
              .toList(),
      pressure:
          (json['pressure'] as List<dynamic>)
              .map((e) => TimeValuePair.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$TimeSeriesDataToJson(_TimeSeriesData instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
    };

_TimeValuePair _$TimeValuePairFromJson(Map<String, dynamic> json) =>
    _TimeValuePair(
      time: json['time'] as String?,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$TimeValuePairToJson(_TimeValuePair instance) =>
    <String, dynamic>{'time': instance.time, 'value': instance.value};

_Alert _$AlertFromJson(Map<String, dynamic> json) => _Alert(
  time: json['time'] as String?,
  message: json['message'] as String?,
  level: json['level'] as String?,
);

Map<String, dynamic> _$AlertToJson(_Alert instance) => <String, dynamic>{
  'time': instance.time,
  'message': instance.message,
  'level': instance.level,
};

_RawData _$RawDataFromJson(Map<String, dynamic> json) => _RawData(
  timestamp: json['timestamp'] as String?,
  temperature: (json['temperature'] as num).toDouble(),
  humidity: (json['humidity'] as num).toDouble(),
  pressure: (json['pressure'] as num).toDouble(),
);

Map<String, dynamic> _$RawDataToJson(_RawData instance) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'temperature': instance.temperature,
  'humidity': instance.humidity,
  'pressure': instance.pressure,
};
