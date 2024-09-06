import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

@riverpod
SharedPreferences sharedPreferences(SharedPreferencesRef ref) =>
    throw UnimplementedError();

const String baseUrlKey = 'BASE_URL';
const String sensorDragListKey = "SENSOR_DRAG_LIST";
const String themeStateKey = "THEME_STATE";
const String languageCodeKey = "LANGUAGE_CODE";
