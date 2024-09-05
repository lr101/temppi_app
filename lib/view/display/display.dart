import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:multi_dropdown/multi_dropdown.dart';
import 'package:openapi/api.dart';
import 'package:temppi_app/provider/theme/theme_provider.dart';
import 'package:temppi_app/view/display/provider/chart_provider.dart';
import 'package:temppi_app/view/display/repository/tick_mark_alg.dart';
import 'package:temppi_app/view/display/sub_widgets/custom_drop_down_item.dart';

import '../../repository/sensor_repository.dart';

class Display extends ConsumerStatefulWidget {
  const Display(this.sensor, {super.key});

  final SensorDto sensor;

  @override
  ConsumerState<Display> createState() => _DisplayState();
}

class _DisplayState extends ConsumerState<Display> {
  final controller = MultiSelectController<SensorDto>();

  final _dropDownList = [
    const DropdownMenuItem(
        value: 60, alignment: Alignment.center, child: Text("last 1 hour")),
    const DropdownMenuItem(
        value: 60 * 12,
        alignment: Alignment.center,
        child: Text("last 12 hours")),
    const DropdownMenuItem(
        value: 60 * 24, alignment: Alignment.center, child: Text("last 1 day")),
    const DropdownMenuItem(
        value: 60 * 24 * 3,
        alignment: Alignment.center,
        child: Text("last 3 days")),
    const DropdownMenuItem(
        value: 60 * 24 * 7,
        alignment: Alignment.center,
        child: Text("last 7 days")),
    const DropdownMenuItem(
        value: 60 * 24 * 30,
        alignment: Alignment.center,
        child: Text("last 1 month")),
    const DropdownMenuItem(
        value: 0,
        alignment: Alignment.center,
        child: Text("Custom time range")),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => ref
        .read(selectedChartSensorsProvider.notifier)
        .update([widget.sensor]));
  }

  @override
  Widget build(BuildContext context) {
    final chartAsync = ref.watch(chartProvider);
    final sensorList = ref.watch(sensorListProvider.notifier).get();
    final theme = ref.watch(themeModeStateProvider.notifier).getTheme();
    final scale = getScaleDetails(ref.read(selectedChartStartTimeProvider),
        ref.read(selectedChartEndTimeProvider));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Display Chart'),
        ),
        body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Form(
                    child: Column(children: [
                  DropdownButton<int>(
                    isExpanded: true,
                    onChanged: (i) {
                      if (i == _dropDownList.last.value) {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            maxTime: DateTime.now(),
                            onChanged: (date) {}, onConfirm: (date) {
                          final time =
                              DateTime.now().difference(date).inMinutes;
                          if (_dropDownList
                              .where((e) => e.value == time)
                              .isEmpty) {
                            _dropDownList.last = DropdownMenuItem(
                                value: time,
                                alignment: Alignment.center,
                                child: const Text("Custom time range"));
                          }
                          ref
                              .read(selectTimeRangeProvider.notifier)
                              .update(time);
                        },
                            currentTime:
                                ref.read(selectedChartStartTimeProvider),
                            locale: LocaleType.en);
                      } else {
                        ref.read(selectTimeRangeProvider.notifier).update(i!);
                      }
                    },
                    value: ref.watch(selectTimeRangeProvider),
                    items: _dropDownList,
                  ),
                  MultiDropdown<SensorDto>(
                    items: sensorList
                        .map((e) => e.sensorId == widget.sensor.sensorId
                            ? CustomDropDownItem(e, selected: true)
                            : CustomDropDownItem(e))
                        .toList(),
                    controller: controller,
                    enabled: true,
                    searchEnabled: false,
                    dropdownItemDecoration: DropdownItemDecoration(
                      backgroundColor: theme.colorScheme.secondaryContainer,
                      selectedBackgroundColor:
                          theme.colorScheme.primaryContainer,
                      textColor: theme.colorScheme.secondary,
                      selectedTextColor: theme.colorScheme.primary,
                    ),
                    selectedItemBuilder: selectDropDownItem,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a sensor';
                      }
                      return null;
                    },
                    onSelectionChange: (selectedItems) {
                      ref
                          .read(selectedChartSensorsProvider.notifier)
                          .update(selectedItems);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text("Sensor data chart"),
                  ),
                  SizedBox.fromSize(
                      size: Size(MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height / 2),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: LineChart(
                          LineChartData(
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: true,
                              drawHorizontalLine: true,
                              verticalInterval: scale,
                              horizontalInterval: 5,
                            ),
                            borderData: FlBorderData(
                                border:
                                    Border.all(color: theme.highlightColor)),
                            titlesData: FlTitlesData(
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 50,
                                      interval: scale,
                                      getTitlesWidget: bottomTitleWidgets,
                                      maxIncluded: false,
                                      minIncluded: false),
                                ),
                                leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 50,
                                    maxIncluded: false,
                                    minIncluded: false,
                                  ),
                                ),
                                rightTitles: const AxisTitles(),
                                topTitles: const AxisTitles()),
                            lineBarsData: chartAsync.when(
                                data: (d) => d,
                                error: (e, s) => [],
                                loading: () => []),
                          ),
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.linear,
                        ),
                      ))
                ])))));
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 12,
    );
    final startTime = ref.read(selectedChartStartTimeProvider);
    final endTime = ref.read(selectedChartEndTimeProvider);
    final currentTime = DateTime.fromMicrosecondsSinceEpoch(value.toInt());
    String text;
    if (endTime.difference(startTime).inDays >= 7) {
      text = DateFormat("MM-dd").format(currentTime);
    } else if (endTime.difference(startTime).inDays >= 1) {
      text =
          "${DateFormat("HH:mm").format(currentTime)} (${DateFormat("d").format(currentTime)}th)";
    } else {
      text = DateFormat("HH:mm").format(currentTime);
    }
    return Align(
      alignment: Alignment.bottomCenter,
      child: Transform.rotate(angle: 70, child: Text(text, style: style)),
    );
  }

  Widget selectDropDownItem(DropdownItem<SensorDto> item) {
    const chipDecoration = ChipDecoration(
      wrap: true,
      runSpacing: 2,
      spacing: 10,
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: chipDecoration.borderRadius,
        color: item.value.color,
        border: chipDecoration.border,
      ),
      padding: chipDecoration.padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(item.label, style: chipDecoration.labelStyle),
          const SizedBox(width: 4),
          InkWell(
            onTap: () {
              controller
                  .unselectWhere((element) => element.label == item.label);
            },
            child: SizedBox(
              width: 16,
              height: 16,
              child: chipDecoration.deleteIcon ??
                  const Icon(Icons.close, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
