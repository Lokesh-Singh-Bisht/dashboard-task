import 'package:flutter/material.dart';

class StateCard extends StatelessWidget {
  final String title;
  final int count;
  final Color color;
  final IconData icon;
  const StateCard({
    super.key,
    required this.title,
    required this.count,
    this.icon = Icons.circle,
    this.color = Colors.indigo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 5),
        Text(
          "$title : ${count.toString()}",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
