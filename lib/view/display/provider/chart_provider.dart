import 'package:fl_chart/fl_chart.dart';
import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temppi_app/view/display/sub_widgets/line_series_builder.dart';

part 'chart_provider.g.dart';

@riverpod
Future<List<LineChartBarData>> chart(ChartRef ref) async {
  final selectedSensors = ref.watch(selectedChartSensorsProvider);
  final selectedStartTime = ref.watch(selectedChartStartTimeProvider);
  final selectedEndTime = ref.watch(selectedChartEndTimeProvider);
  List<LineChartBarData> series = [];
  for (SensorDto sensor in selectedSensors) {
    final sensorSeries = await lineSeriesBuilder(
        ref, sensor, selectedStartTime, selectedEndTime);
    series.add(sensorSeries);
  }
  return series;
}

@riverpod
class SelectedChartSensors extends _$SelectedChartSensors {
  @override
  List<SensorDto> build() {
    return [];
  }

  void update(List<SensorDto> list) {
    state = [...list];
  }
}

@riverpod
DateTime selectedChartStartTime(SelectedChartStartTimeRef ref) {
  return DateTime.now()
      .subtract(Duration(minutes: ref.watch(selectTimeRangeProvider)));
}

@riverpod
DateTime selectedChartEndTime(SelectedChartEndTimeRef ref) {
  return DateTime.now();
}

@riverpod
class SelectTimeRange extends _$SelectTimeRange {
  @override
  int build() {
    return 60;
  }

  void update(int value) {
    state = value;
  }
}
