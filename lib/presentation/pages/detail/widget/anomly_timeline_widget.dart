import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnomalyTimelineWidget extends StatelessWidget {
  const AnomalyTimelineWidget({super.key, required this.anomalies});

  final List<TimeValuePair> anomalies;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          "Anomaly Over Time",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: SizedBox(
        height: 200,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <ColumnSeries>[
            ColumnSeries<TimeValuePair, String>(
              dataSource: anomalies,
              xValueMapper: (e, _) => e.time,
              yValueMapper: (e, _) => e.value,
              pointColorMapper:
                  (e, _) => e.value > 50 ? Colors.red : Colors.amberAccent,
            ),
          ],
        ),
      ),
    );
  }
}
