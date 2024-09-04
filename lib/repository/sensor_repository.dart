import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temppi_app/provider/api_client/api_client_provider.dart';

part 'sensor_repository.g.dart';


@Riverpod(keepAlive: true)
class SensorList extends _$SensorList {


  @override
  FutureOr<List<SensorDto>> build() async {
    final newSensors = await ref.watch(sensorsApiProvider).getSensors();
    if (newSensors== null) return [];
    return newSensors;
  }

  List<SensorDto> get() => state.value ?? [];

}

extension ColorExt on SensorDto {
  Color get color => Color((sensorId.hashCode.toDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}

