import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/app_route/app_routing.gr.dart';
import 'package:pulse_board_app/application/providers/sensor_data_provider.dart';
import 'package:pulse_board_app/application/providers/simulate_settings_provider.dart';
import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';
import 'package:pulse_board_app/application/providers/simulation_data_provider.dart';
import 'package:pulse_board_app/presentation/charts/bubble_chart_widget.dart';
import 'package:pulse_board_app/presentation/charts/toggle_widget.dart';
import 'package:pulse_board_app/presentation/charts/label_color_widget.dart';
import 'package:pulse_board_app/presentation/common/responsive_widget.dart';

import 'package:pulse_board_app/presentation/pages/dashboard/widgets/recent_reading_widget.dart';
import 'package:pulse_board_app/presentation/pages/dashboard/widgets/sensor_state_row_widget.dart';

@RoutePage()
class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.listenManual(sensorDataProvider, (previous, next) {
        final settings = ref.read(simulationSettingsProvider);
        next.whenData((sensorData) {
          ref
              .read(sensorSimulatorProvider.notifier)
              .simulate(sensorData, settings);
        });
      });

      ref.listenManual(simulationSettingsProvider, (previous, next) {
        final sensorData = ref.read(sensorDataProvider).asData?.value;
        if (sensorData != null) {
          ref.read(sensorSimulatorProvider.notifier).simulate(sensorData, next);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final simulatedData = ref.watch(sensorSimulatorProvider);
    final metricType = ref.watch(metricTypeProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          "Pulse Board",
          style: Theme.of(
            context,
          ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black, size: 40),
            onPressed: () => context.router.push(SettingsRoute()),
          ),
        ],
      ),
      body: ResponsiveWidget(
        mobile: _buildMobileLayout(simulatedData, metricType),
        tablet: _buildMobileLayout(simulatedData, metricType),
        desktop: _buildDesktopLayout(simulatedData, metricType),
      ),
    );
  }

  Widget _buildMobileLayout(List<SensorDataModel> sensorData, metricType) {
    return ListView(
      children: [
        SensorStatesRowWidget(sensors: sensorData),
        const SizedBox(height: 16),
        RecentReadingWidget(sensors: sensorData),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnomalyColorDescription(),
              const SizedBox(height: 8),
              MetricToggleWidget(),
            ],
          ),
        ),
        _buildChart(sensorData, metricType),
      ],
    );
  }

  Widget _buildDesktopLayout(List<SensorDataModel> sensorData, metricType) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MetricToggleWidget(),
                    SensorStatesRowWidget(sensors: sensorData),
                  ],
                ),
                Expanded(child: _buildChart(sensorData, metricType)),
              ],
            ),
          ),

          AnomalyColorDescription(),
        ],
      ),
    );
  }

  Widget _buildChart(List<SensorDataModel> sensorData, metricType) {
    return BubbleChartWidget(sensors: sensorData, sizeBy: metricType);
  }
}
