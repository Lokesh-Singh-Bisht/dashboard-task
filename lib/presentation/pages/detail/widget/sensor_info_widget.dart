import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';

class SensorInfoWidget extends StatelessWidget {
  final SensorDetailDataModel sensor;

  const SensorInfoWidget({super.key, required this.sensor});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return ListTile(
      subtitle:
          isDesktop
              ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _infoColumn(context, "Sensor ID", sensor.id ?? ""),
                  _infoColumn(context, "Location", sensor.location ?? ""),
                  _infoColumn(
                    context,
                    "Status",
                    _getStatusLabel(sensor.status),
                  ),
                  _infoColumn(
                    context,
                    "Last Updated",
                    sensor.lastUpdated ?? "-",
                  ),
                  _infoColumn(
                    context,
                    "Temperature",
                    "${sensor.summary.temperature ?? "-"} °C",
                    icon: Icons.thermostat,
                  ),
                  _infoColumn(
                    context,
                    "Humidity",
                    "${sensor.summary.humidity ?? "-"} %",
                    icon: Icons.water_drop,
                  ),
                  _infoColumn(
                    context,
                    "Pressure",
                    "${sensor.summary.pressure ?? "-"} Pa",
                    icon: Icons.compress,
                  ),
                  _infoColumn(
                    context,
                    "Anomaly",
                    sensor.summary.anomaly.toString(),
                    icon: Icons.warning_amber,
                  ),
                ],
              )
              : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _infoRow(context, "Sensor ID", sensor.id ?? ""),
                  _infoRow(context, "Location", sensor.location ?? ""),
                  _infoRow(context, "Status", _getStatusLabel(sensor.status)),
                  _infoRow(context, "Last Updated", sensor.lastUpdated ?? "-"),
                  _infoRow(
                    context,
                    "Temperature",
                    "${sensor.summary.temperature ?? "-"} °C",
                  ),
                  _infoRow(
                    context,
                    "Humidity",
                    "${sensor.summary.humidity ?? "-"} %",
                  ),
                  _infoRow(
                    context,
                    "Pressure",
                    "${sensor.summary.pressure ?? "-"} Pa",
                  ),
                  _infoRow(
                    context,
                    "Anomaly",
                    sensor.summary.anomaly.toString(),
                  ),
                ],
              ),
    );
  }

  Widget _infoColumn(
    BuildContext context,
    String label,
    String value, {
    IconData? icon,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Row(
          children: [
            icon != null
                ? Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(icon),
                )
                : const SizedBox.shrink(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "$label ",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Expanded(child: Text(":")),
          Expanded(
            child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }

  String _getStatusLabel(String? status) {
    switch (status) {
      case "active":
        return "Online";
      case "offline":
        return "Offline";
      default:
        return "Unknown";
    }
  }
}
