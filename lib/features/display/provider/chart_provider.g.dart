// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chartHash() => r'14f04dd6dde732d28ae841eaab9cec2f0d0e3071';

/// See also [chart].
@ProviderFor(chart)
final chartProvider =
    AutoDisposeFutureProvider<List<LineChartBarData>>.internal(
  chart,
  name: r'chartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChartRef = AutoDisposeFutureProviderRef<List<LineChartBarData>>;
String _$selectedChartStartTimeHash() =>
    r'940c5e09ce9dcbb3670bd4f53a39c4666412b01d';

/// See also [selectedChartStartTime].
@ProviderFor(selectedChartStartTime)
final selectedChartStartTimeProvider = AutoDisposeProvider<DateTime>.internal(
  selectedChartStartTime,
  name: r'selectedChartStartTimeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedChartStartTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SelectedChartStartTimeRef = AutoDisposeProviderRef<DateTime>;
String _$selectedChartEndTimeHash() =>
    r'fb7b709efc9a30da5837ad169c8c11a9ec673f28';

/// See also [selectedChartEndTime].
@ProviderFor(selectedChartEndTime)
final selectedChartEndTimeProvider = AutoDisposeProvider<DateTime>.internal(
  selectedChartEndTime,
  name: r'selectedChartEndTimeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedChartEndTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SelectedChartEndTimeRef = AutoDisposeProviderRef<DateTime>;
String _$selectedChartSensorsHash() =>
    r'55bf69737d59d5d1a6de473a0731a585cb2e6896';

/// See also [SelectedChartSensors].
@ProviderFor(SelectedChartSensors)
final selectedChartSensorsProvider =
    AutoDisposeNotifierProvider<SelectedChartSensors, List<SensorDto>>.internal(
  SelectedChartSensors.new,
  name: r'selectedChartSensorsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedChartSensorsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedChartSensors = AutoDisposeNotifier<List<SensorDto>>;
String _$selectTimeRangeHash() => r'38964d14a17d2a6a70e29dc1f2cdcd9f301d2694';

/// See also [SelectTimeRange].
@ProviderFor(SelectTimeRange)
final selectTimeRangeProvider =
    AutoDisposeNotifierProvider<SelectTimeRange, int>.internal(
  SelectTimeRange.new,
  name: r'selectTimeRangeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectTimeRangeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectTimeRange = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
