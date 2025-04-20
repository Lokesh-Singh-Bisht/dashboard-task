// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SensorDataModel {

 String get id; String get location; String? get time; double? get temperature; double? get humidity; double? get pressure; double get anomaly; String get status;
/// Create a copy of SensorDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SensorDataModelCopyWith<SensorDataModel> get copyWith => _$SensorDataModelCopyWithImpl<SensorDataModel>(this as SensorDataModel, _$identity);

  /// Serializes this SensorDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SensorDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,location,time,temperature,humidity,pressure,anomaly,status);

@override
String toString() {
  return 'SensorDataModel(id: $id, location: $location, time: $time, temperature: $temperature, humidity: $humidity, pressure: $pressure, anomaly: $anomaly, status: $status)';
}


}

/// @nodoc
abstract mixin class $SensorDataModelCopyWith<$Res>  {
  factory $SensorDataModelCopyWith(SensorDataModel value, $Res Function(SensorDataModel) _then) = _$SensorDataModelCopyWithImpl;
@useResult
$Res call({
 String id, String location, String? time, double? temperature, double? humidity, double? pressure, double anomaly, String status
});




}
/// @nodoc
class _$SensorDataModelCopyWithImpl<$Res>
    implements $SensorDataModelCopyWith<$Res> {
  _$SensorDataModelCopyWithImpl(this._self, this._then);

  final SensorDataModel _self;
  final $Res Function(SensorDataModel) _then;

/// Create a copy of SensorDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? location = null,Object? time = freezed,Object? temperature = freezed,Object? humidity = freezed,Object? pressure = freezed,Object? anomaly = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double?,anomaly: null == anomaly ? _self.anomaly : anomaly // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SensorDataModel implements SensorDataModel {
  const _SensorDataModel({required this.id, required this.location, required this.time, required this.temperature, required this.humidity, required this.pressure, required this.anomaly, required this.status});
  factory _SensorDataModel.fromJson(Map<String, dynamic> json) => _$SensorDataModelFromJson(json);

@override final  String id;
@override final  String location;
@override final  String? time;
@override final  double? temperature;
@override final  double? humidity;
@override final  double? pressure;
@override final  double anomaly;
@override final  String status;

/// Create a copy of SensorDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SensorDataModelCopyWith<_SensorDataModel> get copyWith => __$SensorDataModelCopyWithImpl<_SensorDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SensorDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SensorDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,location,time,temperature,humidity,pressure,anomaly,status);

@override
String toString() {
  return 'SensorDataModel(id: $id, location: $location, time: $time, temperature: $temperature, humidity: $humidity, pressure: $pressure, anomaly: $anomaly, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SensorDataModelCopyWith<$Res> implements $SensorDataModelCopyWith<$Res> {
  factory _$SensorDataModelCopyWith(_SensorDataModel value, $Res Function(_SensorDataModel) _then) = __$SensorDataModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String location, String? time, double? temperature, double? humidity, double? pressure, double anomaly, String status
});




}
/// @nodoc
class __$SensorDataModelCopyWithImpl<$Res>
    implements _$SensorDataModelCopyWith<$Res> {
  __$SensorDataModelCopyWithImpl(this._self, this._then);

  final _SensorDataModel _self;
  final $Res Function(_SensorDataModel) _then;

/// Create a copy of SensorDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? location = null,Object? time = freezed,Object? temperature = freezed,Object? humidity = freezed,Object? pressure = freezed,Object? anomaly = null,Object? status = null,}) {
  return _then(_SensorDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double?,pressure: freezed == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double?,anomaly: null == anomaly ? _self.anomaly : anomaly // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
