// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SensorDetailDataModel {

 String? get id; String? get location; String? get status; String? get type;@JsonKey(name: "last_updated") String? get lastUpdated; Summary get summary;@JsonKey(name: "time_series_data") TimeSeriesData get timeSeriesData; List<Alert> get alerts;@JsonKey(name: "raw_data") List<RawData> get rawData;
/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SensorDetailDataModelCopyWith<SensorDetailDataModel> get copyWith => _$SensorDetailDataModelCopyWithImpl<SensorDetailDataModel>(this as SensorDetailDataModel, _$identity);

  /// Serializes this SensorDetailDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SensorDetailDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.timeSeriesData, timeSeriesData) || other.timeSeriesData == timeSeriesData)&&const DeepCollectionEquality().equals(other.alerts, alerts)&&const DeepCollectionEquality().equals(other.rawData, rawData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,location,status,type,lastUpdated,summary,timeSeriesData,const DeepCollectionEquality().hash(alerts),const DeepCollectionEquality().hash(rawData));

@override
String toString() {
  return 'SensorDetailDataModel(id: $id, location: $location, status: $status, type: $type, lastUpdated: $lastUpdated, summary: $summary, timeSeriesData: $timeSeriesData, alerts: $alerts, rawData: $rawData)';
}


}

/// @nodoc
abstract mixin class $SensorDetailDataModelCopyWith<$Res>  {
  factory $SensorDetailDataModelCopyWith(SensorDetailDataModel value, $Res Function(SensorDetailDataModel) _then) = _$SensorDetailDataModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? location, String? status, String? type,@JsonKey(name: "last_updated") String? lastUpdated, Summary summary,@JsonKey(name: "time_series_data") TimeSeriesData timeSeriesData, List<Alert> alerts,@JsonKey(name: "raw_data") List<RawData> rawData
});


$SummaryCopyWith<$Res> get summary;$TimeSeriesDataCopyWith<$Res> get timeSeriesData;

}
/// @nodoc
class _$SensorDetailDataModelCopyWithImpl<$Res>
    implements $SensorDetailDataModelCopyWith<$Res> {
  _$SensorDetailDataModelCopyWithImpl(this._self, this._then);

  final SensorDetailDataModel _self;
  final $Res Function(SensorDetailDataModel) _then;

/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? location = freezed,Object? status = freezed,Object? type = freezed,Object? lastUpdated = freezed,Object? summary = null,Object? timeSeriesData = null,Object? alerts = null,Object? rawData = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary,timeSeriesData: null == timeSeriesData ? _self.timeSeriesData : timeSeriesData // ignore: cast_nullable_to_non_nullable
as TimeSeriesData,alerts: null == alerts ? _self.alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<Alert>,rawData: null == rawData ? _self.rawData : rawData // ignore: cast_nullable_to_non_nullable
as List<RawData>,
  ));
}
/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res> get summary {
  
  return $SummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeSeriesDataCopyWith<$Res> get timeSeriesData {
  
  return $TimeSeriesDataCopyWith<$Res>(_self.timeSeriesData, (value) {
    return _then(_self.copyWith(timeSeriesData: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SensorDetailDataModel implements SensorDetailDataModel {
  const _SensorDetailDataModel({required this.id, required this.location, required this.status, required this.type, @JsonKey(name: "last_updated") required this.lastUpdated, required this.summary, @JsonKey(name: "time_series_data") required this.timeSeriesData, required final  List<Alert> alerts, @JsonKey(name: "raw_data") required final  List<RawData> rawData}): _alerts = alerts,_rawData = rawData;
  factory _SensorDetailDataModel.fromJson(Map<String, dynamic> json) => _$SensorDetailDataModelFromJson(json);

@override final  String? id;
@override final  String? location;
@override final  String? status;
@override final  String? type;
@override@JsonKey(name: "last_updated") final  String? lastUpdated;
@override final  Summary summary;
@override@JsonKey(name: "time_series_data") final  TimeSeriesData timeSeriesData;
 final  List<Alert> _alerts;
@override List<Alert> get alerts {
  if (_alerts is EqualUnmodifiableListView) return _alerts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alerts);
}

 final  List<RawData> _rawData;
@override@JsonKey(name: "raw_data") List<RawData> get rawData {
  if (_rawData is EqualUnmodifiableListView) return _rawData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rawData);
}


/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SensorDetailDataModelCopyWith<_SensorDetailDataModel> get copyWith => __$SensorDetailDataModelCopyWithImpl<_SensorDetailDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SensorDetailDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SensorDetailDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.timeSeriesData, timeSeriesData) || other.timeSeriesData == timeSeriesData)&&const DeepCollectionEquality().equals(other._alerts, _alerts)&&const DeepCollectionEquality().equals(other._rawData, _rawData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,location,status,type,lastUpdated,summary,timeSeriesData,const DeepCollectionEquality().hash(_alerts),const DeepCollectionEquality().hash(_rawData));

@override
String toString() {
  return 'SensorDetailDataModel(id: $id, location: $location, status: $status, type: $type, lastUpdated: $lastUpdated, summary: $summary, timeSeriesData: $timeSeriesData, alerts: $alerts, rawData: $rawData)';
}


}

/// @nodoc
abstract mixin class _$SensorDetailDataModelCopyWith<$Res> implements $SensorDetailDataModelCopyWith<$Res> {
  factory _$SensorDetailDataModelCopyWith(_SensorDetailDataModel value, $Res Function(_SensorDetailDataModel) _then) = __$SensorDetailDataModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? location, String? status, String? type,@JsonKey(name: "last_updated") String? lastUpdated, Summary summary,@JsonKey(name: "time_series_data") TimeSeriesData timeSeriesData, List<Alert> alerts,@JsonKey(name: "raw_data") List<RawData> rawData
});


@override $SummaryCopyWith<$Res> get summary;@override $TimeSeriesDataCopyWith<$Res> get timeSeriesData;

}
/// @nodoc
class __$SensorDetailDataModelCopyWithImpl<$Res>
    implements _$SensorDetailDataModelCopyWith<$Res> {
  __$SensorDetailDataModelCopyWithImpl(this._self, this._then);

  final _SensorDetailDataModel _self;
  final $Res Function(_SensorDetailDataModel) _then;

/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? location = freezed,Object? status = freezed,Object? type = freezed,Object? lastUpdated = freezed,Object? summary = null,Object? timeSeriesData = null,Object? alerts = null,Object? rawData = null,}) {
  return _then(_SensorDetailDataModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as Summary,timeSeriesData: null == timeSeriesData ? _self.timeSeriesData : timeSeriesData // ignore: cast_nullable_to_non_nullable
as TimeSeriesData,alerts: null == alerts ? _self._alerts : alerts // ignore: cast_nullable_to_non_nullable
as List<Alert>,rawData: null == rawData ? _self._rawData : rawData // ignore: cast_nullable_to_non_nullable
as List<RawData>,
  ));
}

/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SummaryCopyWith<$Res> get summary {
  
  return $SummaryCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}/// Create a copy of SensorDetailDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeSeriesDataCopyWith<$Res> get timeSeriesData {
  
  return $TimeSeriesDataCopyWith<$Res>(_self.timeSeriesData, (value) {
    return _then(_self.copyWith(timeSeriesData: value));
  });
}
}


/// @nodoc
mixin _$Summary {

 double get temperature; double get humidity; double get pressure; double get anomaly;
/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummaryCopyWith<Summary> get copyWith => _$SummaryCopyWithImpl<Summary>(this as Summary, _$identity);

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Summary&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,humidity,pressure,anomaly);

@override
String toString() {
  return 'Summary(temperature: $temperature, humidity: $humidity, pressure: $pressure, anomaly: $anomaly)';
}


}

/// @nodoc
abstract mixin class $SummaryCopyWith<$Res>  {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) _then) = _$SummaryCopyWithImpl;
@useResult
$Res call({
 double temperature, double humidity, double pressure, double anomaly
});




}
/// @nodoc
class _$SummaryCopyWithImpl<$Res>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._self, this._then);

  final Summary _self;
  final $Res Function(Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = null,Object? humidity = null,Object? pressure = null,Object? anomaly = null,}) {
  return _then(_self.copyWith(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double,anomaly: null == anomaly ? _self.anomaly : anomaly // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Summary implements Summary {
  const _Summary({required this.temperature, required this.humidity, required this.pressure, required this.anomaly});
  factory _Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);

@override final  double temperature;
@override final  double humidity;
@override final  double pressure;
@override final  double anomaly;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SummaryCopyWith<_Summary> get copyWith => __$SummaryCopyWithImpl<_Summary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Summary&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.pressure, pressure) || other.pressure == pressure)&&(identical(other.anomaly, anomaly) || other.anomaly == anomaly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,humidity,pressure,anomaly);

@override
String toString() {
  return 'Summary(temperature: $temperature, humidity: $humidity, pressure: $pressure, anomaly: $anomaly)';
}


}

/// @nodoc
abstract mixin class _$SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$SummaryCopyWith(_Summary value, $Res Function(_Summary) _then) = __$SummaryCopyWithImpl;
@override @useResult
$Res call({
 double temperature, double humidity, double pressure, double anomaly
});




}
/// @nodoc
class __$SummaryCopyWithImpl<$Res>
    implements _$SummaryCopyWith<$Res> {
  __$SummaryCopyWithImpl(this._self, this._then);

  final _Summary _self;
  final $Res Function(_Summary) _then;

/// Create a copy of Summary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = null,Object? humidity = null,Object? pressure = null,Object? anomaly = null,}) {
  return _then(_Summary(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double,anomaly: null == anomaly ? _self.anomaly : anomaly // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$TimeSeriesData {

 List<TimeValuePair> get temperature; List<TimeValuePair> get humidity; List<TimeValuePair> get pressure;
/// Create a copy of TimeSeriesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeSeriesDataCopyWith<TimeSeriesData> get copyWith => _$TimeSeriesDataCopyWithImpl<TimeSeriesData>(this as TimeSeriesData, _$identity);

  /// Serializes this TimeSeriesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeSeriesData&&const DeepCollectionEquality().equals(other.temperature, temperature)&&const DeepCollectionEquality().equals(other.humidity, humidity)&&const DeepCollectionEquality().equals(other.pressure, pressure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(temperature),const DeepCollectionEquality().hash(humidity),const DeepCollectionEquality().hash(pressure));

@override
String toString() {
  return 'TimeSeriesData(temperature: $temperature, humidity: $humidity, pressure: $pressure)';
}


}

/// @nodoc
abstract mixin class $TimeSeriesDataCopyWith<$Res>  {
  factory $TimeSeriesDataCopyWith(TimeSeriesData value, $Res Function(TimeSeriesData) _then) = _$TimeSeriesDataCopyWithImpl;
@useResult
$Res call({
 List<TimeValuePair> temperature, List<TimeValuePair> humidity, List<TimeValuePair> pressure
});




}
/// @nodoc
class _$TimeSeriesDataCopyWithImpl<$Res>
    implements $TimeSeriesDataCopyWith<$Res> {
  _$TimeSeriesDataCopyWithImpl(this._self, this._then);

  final TimeSeriesData _self;
  final $Res Function(TimeSeriesData) _then;

/// Create a copy of TimeSeriesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = null,Object? humidity = null,Object? pressure = null,}) {
  return _then(_self.copyWith(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as List<TimeValuePair>,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as List<TimeValuePair>,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as List<TimeValuePair>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TimeSeriesData implements TimeSeriesData {
  const _TimeSeriesData({required final  List<TimeValuePair> temperature, required final  List<TimeValuePair> humidity, required final  List<TimeValuePair> pressure}): _temperature = temperature,_humidity = humidity,_pressure = pressure;
  factory _TimeSeriesData.fromJson(Map<String, dynamic> json) => _$TimeSeriesDataFromJson(json);

 final  List<TimeValuePair> _temperature;
@override List<TimeValuePair> get temperature {
  if (_temperature is EqualUnmodifiableListView) return _temperature;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature);
}

 final  List<TimeValuePair> _humidity;
@override List<TimeValuePair> get humidity {
  if (_humidity is EqualUnmodifiableListView) return _humidity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_humidity);
}

 final  List<TimeValuePair> _pressure;
@override List<TimeValuePair> get pressure {
  if (_pressure is EqualUnmodifiableListView) return _pressure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pressure);
}


/// Create a copy of TimeSeriesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeSeriesDataCopyWith<_TimeSeriesData> get copyWith => __$TimeSeriesDataCopyWithImpl<_TimeSeriesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeSeriesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeSeriesData&&const DeepCollectionEquality().equals(other._temperature, _temperature)&&const DeepCollectionEquality().equals(other._humidity, _humidity)&&const DeepCollectionEquality().equals(other._pressure, _pressure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_temperature),const DeepCollectionEquality().hash(_humidity),const DeepCollectionEquality().hash(_pressure));

@override
String toString() {
  return 'TimeSeriesData(temperature: $temperature, humidity: $humidity, pressure: $pressure)';
}


}

/// @nodoc
abstract mixin class _$TimeSeriesDataCopyWith<$Res> implements $TimeSeriesDataCopyWith<$Res> {
  factory _$TimeSeriesDataCopyWith(_TimeSeriesData value, $Res Function(_TimeSeriesData) _then) = __$TimeSeriesDataCopyWithImpl;
@override @useResult
$Res call({
 List<TimeValuePair> temperature, List<TimeValuePair> humidity, List<TimeValuePair> pressure
});




}
/// @nodoc
class __$TimeSeriesDataCopyWithImpl<$Res>
    implements _$TimeSeriesDataCopyWith<$Res> {
  __$TimeSeriesDataCopyWithImpl(this._self, this._then);

  final _TimeSeriesData _self;
  final $Res Function(_TimeSeriesData) _then;

/// Create a copy of TimeSeriesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = null,Object? humidity = null,Object? pressure = null,}) {
  return _then(_TimeSeriesData(
temperature: null == temperature ? _self._temperature : temperature // ignore: cast_nullable_to_non_nullable
as List<TimeValuePair>,humidity: null == humidity ? _self._humidity : humidity // ignore: cast_nullable_to_non_nullable
as List<TimeValuePair>,pressure: null == pressure ? _self._pressure : pressure // ignore: cast_nullable_to_non_nullable
as List<TimeValuePair>,
  ));
}


}


/// @nodoc
mixin _$TimeValuePair {

 String? get time; double get value;
/// Create a copy of TimeValuePair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeValuePairCopyWith<TimeValuePair> get copyWith => _$TimeValuePairCopyWithImpl<TimeValuePair>(this as TimeValuePair, _$identity);

  /// Serializes this TimeValuePair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeValuePair&&(identical(other.time, time) || other.time == time)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,value);

@override
String toString() {
  return 'TimeValuePair(time: $time, value: $value)';
}


}

/// @nodoc
abstract mixin class $TimeValuePairCopyWith<$Res>  {
  factory $TimeValuePairCopyWith(TimeValuePair value, $Res Function(TimeValuePair) _then) = _$TimeValuePairCopyWithImpl;
@useResult
$Res call({
 String? time, double value
});




}
/// @nodoc
class _$TimeValuePairCopyWithImpl<$Res>
    implements $TimeValuePairCopyWith<$Res> {
  _$TimeValuePairCopyWithImpl(this._self, this._then);

  final TimeValuePair _self;
  final $Res Function(TimeValuePair) _then;

/// Create a copy of TimeValuePair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = freezed,Object? value = null,}) {
  return _then(_self.copyWith(
time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TimeValuePair implements TimeValuePair {
  const _TimeValuePair({required this.time, required this.value});
  factory _TimeValuePair.fromJson(Map<String, dynamic> json) => _$TimeValuePairFromJson(json);

@override final  String? time;
@override final  double value;

/// Create a copy of TimeValuePair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeValuePairCopyWith<_TimeValuePair> get copyWith => __$TimeValuePairCopyWithImpl<_TimeValuePair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeValuePairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeValuePair&&(identical(other.time, time) || other.time == time)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,value);

@override
String toString() {
  return 'TimeValuePair(time: $time, value: $value)';
}


}

/// @nodoc
abstract mixin class _$TimeValuePairCopyWith<$Res> implements $TimeValuePairCopyWith<$Res> {
  factory _$TimeValuePairCopyWith(_TimeValuePair value, $Res Function(_TimeValuePair) _then) = __$TimeValuePairCopyWithImpl;
@override @useResult
$Res call({
 String? time, double value
});




}
/// @nodoc
class __$TimeValuePairCopyWithImpl<$Res>
    implements _$TimeValuePairCopyWith<$Res> {
  __$TimeValuePairCopyWithImpl(this._self, this._then);

  final _TimeValuePair _self;
  final $Res Function(_TimeValuePair) _then;

/// Create a copy of TimeValuePair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = freezed,Object? value = null,}) {
  return _then(_TimeValuePair(
time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Alert {

 String? get time; String? get message; String? get level;
/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertCopyWith<Alert> get copyWith => _$AlertCopyWithImpl<Alert>(this as Alert, _$identity);

  /// Serializes this Alert to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Alert&&(identical(other.time, time) || other.time == time)&&(identical(other.message, message) || other.message == message)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,message,level);

@override
String toString() {
  return 'Alert(time: $time, message: $message, level: $level)';
}


}

/// @nodoc
abstract mixin class $AlertCopyWith<$Res>  {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) _then) = _$AlertCopyWithImpl;
@useResult
$Res call({
 String? time, String? message, String? level
});




}
/// @nodoc
class _$AlertCopyWithImpl<$Res>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._self, this._then);

  final Alert _self;
  final $Res Function(Alert) _then;

/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = freezed,Object? message = freezed,Object? level = freezed,}) {
  return _then(_self.copyWith(
time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Alert implements Alert {
  const _Alert({required this.time, required this.message, required this.level});
  factory _Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);

@override final  String? time;
@override final  String? message;
@override final  String? level;

/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertCopyWith<_Alert> get copyWith => __$AlertCopyWithImpl<_Alert>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlertToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Alert&&(identical(other.time, time) || other.time == time)&&(identical(other.message, message) || other.message == message)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,message,level);

@override
String toString() {
  return 'Alert(time: $time, message: $message, level: $level)';
}


}

/// @nodoc
abstract mixin class _$AlertCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$AlertCopyWith(_Alert value, $Res Function(_Alert) _then) = __$AlertCopyWithImpl;
@override @useResult
$Res call({
 String? time, String? message, String? level
});




}
/// @nodoc
class __$AlertCopyWithImpl<$Res>
    implements _$AlertCopyWith<$Res> {
  __$AlertCopyWithImpl(this._self, this._then);

  final _Alert _self;
  final $Res Function(_Alert) _then;

/// Create a copy of Alert
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = freezed,Object? message = freezed,Object? level = freezed,}) {
  return _then(_Alert(
time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RawData {

 String? get timestamp; double get temperature; double get humidity; double get pressure;
/// Create a copy of RawData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RawDataCopyWith<RawData> get copyWith => _$RawDataCopyWithImpl<RawData>(this as RawData, _$identity);

  /// Serializes this RawData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RawData&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.pressure, pressure) || other.pressure == pressure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temperature,humidity,pressure);

@override
String toString() {
  return 'RawData(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, pressure: $pressure)';
}


}

/// @nodoc
abstract mixin class $RawDataCopyWith<$Res>  {
  factory $RawDataCopyWith(RawData value, $Res Function(RawData) _then) = _$RawDataCopyWithImpl;
@useResult
$Res call({
 String? timestamp, double temperature, double humidity, double pressure
});




}
/// @nodoc
class _$RawDataCopyWithImpl<$Res>
    implements $RawDataCopyWith<$Res> {
  _$RawDataCopyWithImpl(this._self, this._then);

  final RawData _self;
  final $Res Function(RawData) _then;

/// Create a copy of RawData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? temperature = null,Object? humidity = null,Object? pressure = null,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RawData implements RawData {
  const _RawData({required this.timestamp, required this.temperature, required this.humidity, required this.pressure});
  factory _RawData.fromJson(Map<String, dynamic> json) => _$RawDataFromJson(json);

@override final  String? timestamp;
@override final  double temperature;
@override final  double humidity;
@override final  double pressure;

/// Create a copy of RawData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RawDataCopyWith<_RawData> get copyWith => __$RawDataCopyWithImpl<_RawData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RawDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RawData&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.pressure, pressure) || other.pressure == pressure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,temperature,humidity,pressure);

@override
String toString() {
  return 'RawData(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, pressure: $pressure)';
}


}

/// @nodoc
abstract mixin class _$RawDataCopyWith<$Res> implements $RawDataCopyWith<$Res> {
  factory _$RawDataCopyWith(_RawData value, $Res Function(_RawData) _then) = __$RawDataCopyWithImpl;
@override @useResult
$Res call({
 String? timestamp, double temperature, double humidity, double pressure
});




}
/// @nodoc
class __$RawDataCopyWithImpl<$Res>
    implements _$RawDataCopyWith<$Res> {
  __$RawDataCopyWithImpl(this._self, this._then);

  final _RawData _self;
  final $Res Function(_RawData) _then;

/// Create a copy of RawData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? temperature = null,Object? humidity = null,Object? pressure = null,}) {
  return _then(_RawData(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String?,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,pressure: null == pressure ? _self.pressure : pressure // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
