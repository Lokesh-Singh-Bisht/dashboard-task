// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SensorDataModel _$SensorDataModelFromJson(Map<String, dynamic> json) =>
    _SensorDataModel(
      id: json['id'] as String,
      location: json['location'] as String,
      time: json['time'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      anomaly: (json['anomaly'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$SensorDataModelToJson(_SensorDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'time': instance.time,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'anomaly': instance.anomaly,
      'status': instance.status,
    };
