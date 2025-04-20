import 'package:flutter/material.dart';
import 'package:pulse_board_app/data/model/sensor_detail/sensor_detail_model.dart';
import 'package:pulse_board_app/presentation/common/responsive_widget.dart';

import 'data_table_widget.dart';

class RowDataTableWidget extends StatelessWidget {
  const RowDataTableWidget({super.key, required this.rawData});

  final List<RawData> rawData;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DataTableWidget(rawData: rawData),
      ),
      tablet: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DataTableWidget(rawData: rawData),
      ),
      desktop: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DataTableWidget(rawData: rawData),
      ),
    );
  }
}
