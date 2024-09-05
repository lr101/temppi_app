import 'package:fl_chart/fl_chart.dart';
import 'package:openapi/api.dart';
import 'package:temppi_app/provider/api_client/api_client_provider.dart';
import 'package:temppi_app/repository/sensor_repository.dart';

import '../provider/chart_provider.dart';

Future<LineChartBarData> lineSeriesBuilder(
    ChartRef ref, SensorDto sensor, DateTime start, DateTime end) async {
  return LineChartBarData(
      spots: (await ref.watch(sensorEntriesApiProvider).getEntries(
                  sensor.sensorId!,
                  date2: start,
                  date1: end,
                  interval: 360))
              ?.map((e) => FlSpot(
                    e.timestamp!.microsecondsSinceEpoch.toDouble(),
                    double.parse(e.value!.toStringAsFixed(
                        2)), // Clipping value to 2 decimal places
                  ))
              .toList() ??
          [],
      isCurved: true,
      preventCurveOverShooting: true,
      preventCurveOvershootingThreshold: 1.0,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      color: sensor.color);
}
