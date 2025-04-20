import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';
import 'package:pulse_board_app/presentation/pages/dashboard/widgets/state_card_widget.dart';

class SensorStatesRowWidget extends StatelessWidget {
  const SensorStatesRowWidget({super.key, required this.sensors});

  final List<SensorDataModel> sensors;

  @override
  Widget build(BuildContext context) {
    final total = sensors.length;
    final offline = sensors.where((s) => s.status == 'offline').length;
    final anomalies = sensors.where((s) => s.anomaly > 0).length;

    return Card(
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        child: Row(
          spacing: 20,
          children: [
            StateCard(
              title: "Offline",
              count: offline,
              color: Colors.grey,
              icon: Icons.signal_wifi_off,
            ),
            StateCard(
              title: "Critical",
              count: anomalies,
              color: Colors.red,
              icon: Icons.warning_amber,
            ),
            StateCard(title: "Total", count: total),
          ],
        ),
      ),
    );
  }
}
