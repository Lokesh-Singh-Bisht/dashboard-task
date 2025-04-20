import 'package:flutter/material.dart';

class AnomalyColorDescription extends StatelessWidget {
  const AnomalyColorDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 30,
          children: const [
            _LegendItem(color: Colors.grey, label: "No Data / Offline"),
            _LegendItem(color: Colors.green, label: "Normal (Anomaly = 0)"),
            _LegendItem(color: Colors.yellow, label: "Warning (Anomaly ≤ 50)"),
            _LegendItem(color: Colors.red, label: "Critical (Anomaly > 50)"),
          ],
        ),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12),
          ),
        ),
        const SizedBox(width: 8),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.white)),
      ],
    );
  }
}
