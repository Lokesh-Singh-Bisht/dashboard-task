import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key, required this.rawData});

  final List<RawData> rawData;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 10,

      horizontalMargin: 10,
      sortAscending: true,
      showCheckboxColumn: true,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      border: TableBorder(
        borderRadius: BorderRadius.circular(10),
        horizontalInside: BorderSide(color: Colors.black, width: 1),
        verticalInside: BorderSide(color: Colors.black, width: 1),
      ),

      columns: const [
        DataColumn(label: Text("Temperature")),
        DataColumn(label: Text("Humidity")),
        DataColumn(label: Text("Pressure")),
      ],
      rows:
          rawData.map((e) {
            return DataRow(
              cells: [
                DataCell(Text(e.temperature.toString())),
                DataCell(Text(e.humidity.toString())),
                DataCell(Text(e.pressure.toString())),
              ],
            );
          }).toList(),
    );
  }
}
