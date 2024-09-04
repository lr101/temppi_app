// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsRepositoryHash() =>
    r'af2f2886b1998df6ce28a8a9828a155b8e0c4511';

/// See also [settingsRepository].
@ProviderFor(settingsRepository)
final settingsRepositoryProvider = Provider<SettingsRepository>.internal(
  settingsRepository,
  name: r'settingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$settingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SettingsRepositoryRef = ProviderRef<SettingsRepository>;
String _$baseUrlHash() => r'78e411acf97afc7cc5dc8ddbd2b5b6b4e462e8ad';

/// See also [BaseUrl].
@ProviderFor(BaseUrl)
final baseUrlProvider = NotifierProvider<BaseUrl, String>.internal(
  BaseUrl.new,
  name: r'baseUrlProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$baseUrlHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BaseUrl = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
