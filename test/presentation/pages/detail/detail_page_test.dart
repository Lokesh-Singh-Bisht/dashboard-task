import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pulse_board_app/application/providers/sensor_data_provider.dart';
import 'package:pulse_board_app/presentation/pages/detail/detail_page.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/alert_time_line_widget.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/row_data_table_widget.dart';
import 'package:pulse_board_app/presentation/pages/detail/widget/sensor_info_widget.dart';

import '../../../mock_data/mock_sensor_detail_data.dart';

void main() {
  testWidgets('DetailPage renders all main components correctly', (
    tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sensorDetailDataProvider.overrideWith(
            (ref) => mockTestSensorDetailData,
          ),
        ],
        child: const MaterialApp(home: DetailPage()),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Sensor Overview'), findsOneWidget);
    expect(find.text('Temperature Over Time'), findsOneWidget);
    expect(find.text('Humidity Over Time'), findsOneWidget);
    expect(find.text('Pressure Over Time'), findsOneWidget);

    expect(find.byType(ChartCard), findsNWidgets(3));
    expect(find.byType(AnomalyCard), findsOneWidget);
    expect(find.byType(AlertTimeLineWidget), findsOneWidget);
    expect(find.byType(SensorInfoWidget), findsOneWidget);
    expect(find.byType(RowDataTableWidget), findsOneWidget);
  });
}
