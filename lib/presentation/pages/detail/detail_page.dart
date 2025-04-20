import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/application/providers/sensor_data_provider.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';
import 'package:pulse_board_app/presentation/charts/line_chart_widget.dart';
import 'package:pulse_board_app/presentation/common/responsive_widget.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/alert_time_line_widget.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/anomly_timeline_widget.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/row_data_table_widget.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/sensor_info_widget.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sensor Overview',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: true,
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          var sensorProvider = ref.watch(sensorDetailDataProvider);
          return sensorProvider.when(
            data: (sensor) {
              return ResponsiveWidget(
                mobile: _buildContent(context, sensor, isMobile: true),
                tablet: _buildContent(context, sensor, isMobile: false),
                desktop: _buildContent(context, sensor, isMobile: false),
              );
            },
            error: (err, str) {
              print(err);
              return Center(child: Text("Error"));
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
          );
        },
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    SensorDetailDataModel sensorData, {
    required bool isMobile,
  }) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SensorInfoWidget(sensor: sensorData),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              subtitle: RowDataTableWidget(rawData: sensorData.rawData),
            ),
          ),
          const SizedBox(height: 24),
          // Responsive charts layout
          isMobile
              ? Column(
                children: [
                  ChartCard(
                    "Temperature Over Time",
                    sensorData.timeSeriesData.temperature,
                  ),
                  ChartCard(
                    "Humidity Over Time",
                    sensorData.timeSeriesData.humidity,
                  ),
                  ChartCard(
                    "Pressure Over Time",
                    sensorData.timeSeriesData.pressure,
                  ),
                  AnomalyCard(sensorData.timeSeriesData.humidity),
                ],
              )
              : Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ChartCard(
                          "Temperature Over Time",
                          sensorData.timeSeriesData.temperature,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ChartCard(
                          "Humidity Over Time",
                          sensorData.timeSeriesData.humidity,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AnomalyCard(
                          sensorData.timeSeriesData.temperature,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ChartCard(
                          "Pressure Over Time",
                          sensorData.timeSeriesData.pressure,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          const SizedBox(height: 24),
          AlertTimeLineWidget(alerts: sensorData.alerts),
        ],
      ),
    );
  }
}

class ChartCard extends StatelessWidget {
  final String title;
  final List<TimeValuePair> data;

  const ChartCard(this.title, this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: LineChartWidget(title: title, data: data),
      ),
    );
  }
}

class AnomalyCard extends StatelessWidget {
  final List<TimeValuePair> data;

  const AnomalyCard(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: AnomalyTimelineWidget(anomalies: data),
      ),
    );
  }
}
