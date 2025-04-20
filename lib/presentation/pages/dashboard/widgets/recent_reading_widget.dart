import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';



class RecentReadingWidget extends StatelessWidget {
  const RecentReadingWidget({super.key, required this.sensors});

  final List<SensorDataModel> sensors;

  @override
  Widget build(BuildContext context) {
    final latest = sensors.take(5).toList();
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Recent Sensor Data",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ...latest.map(
                (s) => ListTile(
              title: Text('${s.location} - ${s.id}'),
              subtitle: Text(
                "Temp: ${s.temperature ?? "?"}°C, Humidity: ${s.humidity ?? "?"}%",
              ),
              trailing: Text(s.time ?? ""),
            ),
          ),
        ],
      ),
    );
  }
}


