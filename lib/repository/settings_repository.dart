import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../provider/shared_preferences/shared_preferences_provider.dart';

class SettingsRepository {
  const SettingsRepository(this.ref);

  final Ref ref;

  String getBaseUrl() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    return sharedPreferences.getString(baseUrlKey) ?? baseUrl;
  }

  Future<void> setBaseUrl(String url) {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    return sharedPreferences.setString(baseUrlKey, url);
  }
}


const String baseUrlKey = 'BASE_URL';
const String baseUrl = 'http://192.168.0.82:8081';