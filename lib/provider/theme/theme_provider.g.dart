// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeDataHash() => r'8bb6093b83628617462fd84718a1483eb7217106';

/// See also [themeData].
@ProviderFor(themeData)
final themeDataProvider = AutoDisposeProvider<ThemeData>.internal(
  themeData,
  name: r'themeDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ThemeDataRef = AutoDisposeProviderRef<ThemeData>;
String _$darkThemeDataHash() => r'7cb2433569cd54392c62c6495cbe6d555abd07e4';

/// See also [darkThemeData].
@ProviderFor(darkThemeData)
final darkThemeDataProvider = AutoDisposeProvider<ThemeData>.internal(
  darkThemeData,
  name: r'darkThemeDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$darkThemeDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DarkThemeDataRef = AutoDisposeProviderRef<ThemeData>;
String _$themeModeStateHash() => r'beb67fd58152b75d33ac23ee38e891b75e37b68d';

/// See also [ThemeModeState].
@ProviderFor(ThemeModeState)
final themeModeStateProvider =
    AutoDisposeNotifierProvider<ThemeModeState, ThemeMode>.internal(
  ThemeModeState.new,
  name: r'themeModeStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeModeStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeModeState = AutoDisposeNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
