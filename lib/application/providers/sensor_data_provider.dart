import 'package:pulse_board_app/core/di/di_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/data/repo/sensor/sensor_data_repo.dart';
import 'package:pulse_board_app/shared/app_enums.dart';

final metricTypeProvider = StateProvider<MetricDataType>(
  (ref) => MetricDataType.pressure,
);

final sensorDataRepoProvider = Provider<ISensorDataRepository>((ref) {
  return getIt<ISensorDataRepository>();
});

final sensorDataProvider = FutureProvider((ref) async {
  final repo = ref.watch(sensorDataRepoProvider);
  return await repo.getSensorData();
});

final sensorDetailDataProvider = FutureProvider((ref) async {
  final repo = ref.watch(sensorDataRepoProvider);
  return await repo.getSensorDetailData();
});
