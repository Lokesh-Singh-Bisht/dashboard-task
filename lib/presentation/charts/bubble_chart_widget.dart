import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pulse_board_app/app_route/app_routing.gr.dart';
import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';
import 'package:pulse_board_app/shared/app_enums.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BubbleChartWidget extends StatelessWidget {
  final List<SensorDataModel> sensors;
  final MetricDataType sizeBy;

  const BubbleChartWidget({
    super.key,
    required this.sensors,
    required this.sizeBy,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.black26, width: 8),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SfCartesianChart(
          backgroundColor: Colors.transparent,
          crosshairBehavior: CrosshairBehavior(
            lineType: CrosshairLineType.both,
            activationMode: ActivationMode.singleTap,
            lineColor: Colors.black,
            lineWidth: 1,
            enable: true,
            shouldAlwaysShow: true,
          ),
          primaryXAxis: CategoryAxis(
            title: AxisTitle(text: "Time"),
            axisLine: const AxisLine(width: 2, color: Colors.white),
          ),
          primaryYAxis: NumericAxis(
            axisLine: const AxisLine(width: 2, color: Colors.white),
            title: AxisTitle(text: "Temperature in °C"),
            minimum: -10,
            maximum: 100,
            interval: 10,
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <BubbleSeries<SensorDataModel, String>>[
            BubbleSeries<SensorDataModel, String>(
              dataSource: sensors,
              xValueMapper: (data, _) => data.time ?? data.location,
              yValueMapper: (data, _) => data.temperature ?? 0,
              sizeValueMapper: (data, _) {
                if (sizeBy == MetricDataType.pressure) {
                  return data.pressure ?? 100;
                } else {
                  return data.humidity ?? 100;
                }
              },
              minimumRadius: 2,
              maximumRadius: 15,
              onPointTap: (details) {
                context.router.push(DetailRoute());
              },
              pointColorMapper: (data, _) => getBubbleColor(data.anomaly),
            ),
          ],
        ),
      ),
    );
  }
}

Color getBubbleColor(double? anomaly) {
  if (anomaly == null || anomaly == -1) return Colors.grey;
  if (anomaly == 0) return Colors.green;
  if (anomaly <= 50) return Colors.yellow;
  return Colors.red;
}
