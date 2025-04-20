import 'package:injectable/injectable.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';
import 'package:pulse_board_app/data/repo/sensor/sensor_data_repo.dart';
import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';
import 'package:pulse_board_app/data/service/sensor_data_service.dart';

@Injectable(as: ISensorDataRepository)
class SensorDataRepoImplementation extends ISensorDataRepository {
  final SensorDataService sensorDaraService;

  SensorDataRepoImplementation({required this.sensorDaraService});

  @override
  Future<List<SensorDataModel>> getSensorData() async {
    try {
      var sensorDataModel = await sensorDaraService.getSensorData();
      var data = sensorDataModel['sensor_data'] as List;
      return data.map((json) => SensorDataModel.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SensorDetailDataModel> getSensorDetailData() async {
    try {
      var sensorDataModel = await sensorDaraService.getSensorDetailData();
      return SensorDetailDataModel.fromJson(sensorDataModel);
    } catch (e) {
      rethrow;
    }
  }
}
