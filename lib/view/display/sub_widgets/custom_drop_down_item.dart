import 'package:multi_dropdown/multi_dropdown.dart';
import 'package:openapi/api.dart';

class CustomDropDownItem extends DropdownItem<SensorDto> {
  CustomDropDownItem(SensorDto item, {super.selected})
      : super(label: item.sensorNick!, value: item);
}
