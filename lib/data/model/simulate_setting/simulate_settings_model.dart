import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulate_settings_model.freezed.dart';

@freezed
abstract class SimulateSettingsModel with _$SimulateSettingsModel {
  const factory SimulateSettingsModel({
    @Default(false) bool simulateOffline,
    @Default(false) bool simulateNullTemperature,
    @Default(false) bool simulateNullHumidity,
    @Default(false) bool simulateHighAnomaly,
  }) = _SimulateSettingsModel;
}
