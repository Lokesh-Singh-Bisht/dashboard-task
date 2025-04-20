import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pulse_board_app/application/providers/sensor_data_provider.dart';
import 'package:pulse_board_app/presentation/charts/bubble_chart_widget.dart';
import 'package:pulse_board_app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:pulse_board_app/presentation/pages/dashboard/widgets/recent_reading_widget.dart';
import 'package:pulse_board_app/presentation/pages/dashboard/widgets/sensor_state_row_widget.dart';
import 'package:pulse_board_app/shared/app_enums.dart';

import '../../../mock_data/mock_sensor_data.dart';

void main() {
  testWidgets('DashboardPage renders key widgets', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sensorDataProvider.overrideWith((ref) => mockSensorData),
          metricTypeProvider.overrideWith((ref) => MetricDataType.pressure),
        ],
        child: MaterialApp(home: const DashboardPage()),
      ),
    );

    await tester.pumpAndSettle(); // Allow any async data loading to finish
    expect(find.text('Pulse Board'), findsOneWidget);
    expect(find.byType(BubbleChartWidget), findsOneWidget);
    expect(find.byType(RecentReadingWidget), findsOneWidget);
    expect(find.byType(SensorStatesRowWidget), findsOneWidget);
  });
}
