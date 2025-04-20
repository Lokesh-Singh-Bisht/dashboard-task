import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/data/model/simulate_setting/simulate_settings_model.dart';

class SimulationSettingsNotifier extends StateNotifier<SimulateSettingsModel> {
  SimulationSettingsNotifier() : super(const SimulateSettingsModel());

  void toggleOffline() =>
      state = state.copyWith(simulateOffline: !state.simulateOffline);

  void toggleNullTemperature() =>
      state = state.copyWith(
        simulateNullTemperature: !state.simulateNullTemperature,
      );

  void toggleNullHumidity() =>
      state = state.copyWith(simulateNullHumidity: !state.simulateNullHumidity);

  void toggleHighAnomaly() =>
      state = state.copyWith(simulateHighAnomaly: !state.simulateHighAnomaly);

  void reset() => state = const SimulateSettingsModel();
}

final simulationSettingsProvider =
    StateNotifierProvider<SimulationSettingsNotifier, SimulateSettingsModel>(
      (ref) => SimulationSettingsNotifier(),
    );
