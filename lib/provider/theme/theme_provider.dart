import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temppi_app/provider/shared_preferences/shared_preferences_provider.dart';

import '../../theme/custom_theme.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeModeState extends _$ThemeModeState {
  @override
  ThemeMode build() {
    final themeBool =
        ref.read(sharedPreferencesProvider).getBool("THEME_STATE");
    if (themeBool == null) return ThemeMode.system;
    return themeBool ? ThemeMode.dark : ThemeMode.light;
  }

  void toggle(bool value) {
    state = value ? ThemeMode.dark : ThemeMode.light;
    ref.read(sharedPreferencesProvider).setBool("THEME_STATE", value);
  }

  ThemeData getTheme() {
    final light = ref.watch(themeDataProvider);
    final dark = ref.watch(darkThemeDataProvider);
    return state == ThemeMode.dark ? dark : light;
  }
}

@riverpod
ThemeData themeData(ThemeDataRef ref) => theme;

@riverpod
ThemeData darkThemeData(DarkThemeDataRef ref) => darkTheme;
