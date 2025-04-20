import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/application/providers/simulate_settings_provider.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final settings = ref.watch(simulationSettingsProvider);
        return Scaffold(
          appBar: AppBar(title: const Text('Simulation Settings')),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              color: Theme.of(context).colorScheme.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.grey.shade300),
              ),
              elevation: 4,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildSwitchTile(
                    title: "Simulate Offline Sensors",
                    subtitle:
                        "Some sensors will appear as offline (gray bubbles)",
                    value: settings.simulateOffline,
                    onChanged: (val) {
                      ref
                          .read(simulationSettingsProvider.notifier)
                          .toggleOffline();
                    },
                  ),
                  const Divider(),
                  _buildSwitchTile(
                    title: "Simulate Null Temperature",
                    subtitle:
                        "Temperature data will be set to null for some sensors",
                    value: settings.simulateNullTemperature,
                    onChanged: (val) {
                      ref
                          .read(simulationSettingsProvider.notifier)
                          .toggleNullTemperature();
                    },
                  ),
                  const Divider(),
                  _buildSwitchTile(
                    title: "Simulate Null Humidity",
                    subtitle:
                        "Humidity data will be set to null for some sensors",
                    value: settings.simulateNullHumidity,
                    onChanged: (val) {
                      ref
                          .read(simulationSettingsProvider.notifier)
                          .toggleNullHumidity();
                    },
                  ),
                  const Divider(),
                  _buildSwitchTile(
                    title: "Simulate High Anomaly",
                    subtitle: "Some sensors will show high anomaly values",
                    value: settings.simulateHighAnomaly,
                    onChanged: (val) {
                      ref
                          .read(simulationSettingsProvider.notifier)
                          .toggleHighAnomaly();
                    },
                  ),
                  const Divider(),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    key: ValueKey("ResetButton"),
                    onPressed: () {
                      ref.read(simulationSettingsProvider.notifier).reset();
                    },

                    icon: const Icon(Icons.refresh),
                    label: const Text("Reset All"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required String subtitle,
    required bool value,
    required void Function(bool) onChanged,
  }) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.white)),
      activeColor: Colors.indigo,
      value: value,
      onChanged: onChanged,
    );
  }
}
