import 'package:pulse_board_app/data/model/sensor/sensor_data_model.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';

abstract class ISensorDataRepository {
  Future<List<SensorDataModel>> getSensorData();
  Future<SensorDetailDataModel> getSensorDetailData();
}
