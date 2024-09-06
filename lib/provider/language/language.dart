
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temppi_app/provider/shared_preferences/shared_preferences_provider.dart';

part 'language.g.dart';

@Riverpod(keepAlive: true)
class Language extends _$Language {

  @override
  Locale build() {
    final languageCode = ref.read(sharedPreferencesProvider).getString(languageCodeKey);
    return supportedLocales.firstWhere((code) => code.languageCode == languageCode, orElse: () => supportedLocales.first);
  }

  void toggle(Locale locale) {
    state = locale;
    ref.read(sharedPreferencesProvider).setString(languageCodeKey, locale.languageCode);
  }
}

const supportedLocales = [Locale('en'), Locale('de')];