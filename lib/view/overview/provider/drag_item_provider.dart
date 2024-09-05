import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temppi_app/provider/shared_preferences/shared_preferences_provider.dart';

import '../../../repository/sensor_repository.dart';

part 'drag_item_provider.g.dart';

@riverpod
class DragItem extends _$DragItem {
  @override
  List<SensorDto> build() {
    return ref.watch(sensorListProvider).when(
          data: (cb) {
            List<SensorDto> newItems = cb.toList();
            List<SensorDto> returnList = [];
            final list = ref
                    .watch(sharedPreferencesProvider)
                    .getStringList("SENSOR_DRAG_LIST") ??
                [];
            for (String sensorId in list) {
              final sensor =
                  newItems.where((element) => element.sensorId == sensorId);
              if (sensor.isNotEmpty) {
                returnList.add(sensor.first);
                newItems.remove(sensor.first);
              }
            }
            returnList.addAll(newItems);
            ref.read(sharedPreferencesProvider).setStringList(
                "SENSOR_DRAG_LIST",
                returnList.map((e) => e.sensorId!).toList());
            return returnList;
          },
          error: (err, stack) => [],
          loading: () => [],
        );
  }

  void update(List<SensorDto> list) {
    state = [...list];
    ref.read(sharedPreferencesProvider).setStringList(
        "SENSOR_DRAG_LIST", state.map((e) => e.sensorId!).toList());
  }
}
