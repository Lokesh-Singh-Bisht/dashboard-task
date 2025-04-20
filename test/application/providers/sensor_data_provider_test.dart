import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pulse_board_app/application/providers/sensor_data_provider.dart';
import 'package:pulse_board_app/data/repo/sensor/sensor_data_repo.dart';
import 'package:pulse_board_app/shared/app_enums.dart';
import '../../mock_data/mock_sensor_data.dart';
import '../../mock_data/mock_sensor_detail_data.dart';

class MockSensorRepo extends Mock implements ISensorDataRepository {}

void main() {
  late MockSensorRepo mockRepo;

  setUp(() {
    mockRepo = MockSensorRepo();
  });

  test('sensorDataProvider returns sensor overview data', () async {
    when(
      () => mockRepo.getSensorData(),
    ).thenAnswer((_) async => mockSensorData);

    final container = ProviderContainer(
      overrides: [sensorDataRepoProvider.overrideWithValue(mockRepo)],
    );

    final result = await container.read(sensorDataProvider.future);

    expect(result, mockSensorData);
    verify(() => mockRepo.getSensorData()).called(1);
  });

  test('sensorDetailDataProvider returns sensor detail data', () async {
    when(
      () => mockRepo.getSensorDetailData(),
    ).thenAnswer((_) async => mockTestSensorDetailData);

    final container = ProviderContainer(
      overrides: [sensorDataRepoProvider.overrideWithValue(mockRepo)],
    );

    final result = await container.read(sensorDetailDataProvider.future);

    expect(result, mockTestSensorDetailData);
    verify(() => mockRepo.getSensorDetailData()).called(1);
  });

  test('metricTypeProvider default and state update', () {
    final container = ProviderContainer();

    expect(container.read(metricTypeProvider), MetricDataType.pressure);

    container.read(metricTypeProvider.notifier).state = MetricDataType.pressure;

    expect(container.read(metricTypeProvider), MetricDataType.pressure);
  });
}
