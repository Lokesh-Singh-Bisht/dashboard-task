import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SensorDataService {
  final String sensorDataPath = "assets/mock/sensor_data.json";
  final String sensorDetailsDataDPath = "assets/mock/sensor_details_data.json";

  Future<Map<String, dynamic>> getSensorData() async {
    try {
      final String response = await rootBundle.loadString(sensorDataPath);
      return json.decode(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getSensorDetailData() async {
    try {
      final String response = await rootBundle.loadString(
        sensorDetailsDataDPath,
      );
      return json.decode(response);
    } catch (e) {
      rethrow;
    }
  }
}
