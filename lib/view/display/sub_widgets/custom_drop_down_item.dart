import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multi_dropdown.dart';
import 'package:openapi/api.dart';
import 'package:temppi_app/repository/sensor_repository.dart';

class CustomDropDownItem extends DropdownItem<SensorDto>{
  CustomDropDownItem(SensorDto item, {super.selected}) : super(label: item.sensorNick!, value: item);
}


