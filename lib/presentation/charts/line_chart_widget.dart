import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key, required this.title, required this.data});

  final String title;
  final List<TimeValuePair> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: SizedBox(
        height: 200,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <LineSeries>[
            LineSeries<TimeValuePair, String>(
              dataSource: data,
              xValueMapper: (TimeValuePair point, _) => point.time,
              yValueMapper: (TimeValuePair point, _) => point.value,
              enableTooltip: true,
              width: 5,
              color: Colors.orange,
              sortingOrder: SortingOrder.descending,
              selectionBehavior: SelectionBehavior(
                enable: true,
                selectedColor: Colors.amberAccent,
                selectedBorderColor: Colors.amberAccent,
                selectedBorderWidth: 4,
                toggleSelection: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
