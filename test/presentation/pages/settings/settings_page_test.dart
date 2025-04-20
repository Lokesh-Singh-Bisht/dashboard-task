import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pulse_board_app/application/providers/simulate_settings_provider.dart';
import 'package:pulse_board_app/data/model/simulate_setting/simulate_settings_model.dart';
import 'package:pulse_board_app/presentation/pages/settings/settings_page.dart';

void main() {
  group('SettingsPage', () {
    late SimulateSettingsModel testSettings;
    late SimulationSettingsNotifier notifier;

    setUp(() {
      testSettings = SimulateSettingsModel(
        simulateOffline: false,
        simulateNullTemperature: false,
        simulateNullHumidity: false,
        simulateHighAnomaly: false,
      );
      notifier = SimulationSettingsNotifier();
      notifier.state = testSettings;
    });

    testWidgets('renders all settings and reacts to toggle', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            simulationSettingsProvider.overrideWith((ref) => notifier),
          ],
          child: const MaterialApp(home: SettingsPage()),
        ),
      );

      await tester.pumpAndSettle();

      // Verify all switch tiles exist
      expect(find.text("Simulate Offline Sensors"), findsOneWidget);
      expect(find.text("Simulate Null Temperature"), findsOneWidget);
      expect(find.text("Simulate Null Humidity"), findsOneWidget);
      expect(find.text("Simulate High Anomaly"), findsOneWidget);
      expect(find.text("Reset All"), findsOneWidget);

      // Tap on the first switch tile
      await tester.tap(find.byType(SwitchListTile).first);
      await tester.pump();

      // Check if state changed in the notifier
      expect(notifier.state.simulateOffline, true);
    });

    testWidgets('reset button resets all toggles', (tester) async {
      // Pre-set notifier to true for all
      notifier.state = SimulateSettingsModel(
        simulateOffline: true,
        simulateNullTemperature: true,
        simulateNullHumidity: true,
        simulateHighAnomaly: true,
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            simulationSettingsProvider.overrideWith((ref) => notifier),
          ],
          child: const MaterialApp(home: SettingsPage()),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey("ResetButton")));
      await tester.pumpAndSettle();

      // Ensure all are reset to false
      expect(notifier.state.simulateOffline, false);
      expect(notifier.state.simulateNullTemperature, false);
      expect(notifier.state.simulateNullHumidity, false);
      expect(notifier.state.simulateHighAnomaly, false);
    });
  });
}
