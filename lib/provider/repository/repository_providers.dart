import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/sensor_repository.dart';
import '../../repository/settings_repository.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(SettingsRepositoryRef ref) {
  return SettingsRepository(ref);
}

@Riverpod(keepAlive: true)
class BaseUrl extends _$BaseUrl {
  @override
  String build() {
    return ref.read(settingsRepositoryProvider).getBaseUrl();
  }

  updateUrl(String url) {
    ref.read(settingsRepositoryProvider).setBaseUrl(url);
    state = url;
  }
}

