import 'package:openapi/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repository/settings_repository.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) {
  return ApiClient(basePath: ref.watch(baseUrlProvider));
}

@Riverpod(keepAlive: true)
SensorsApi sensorsApi(SensorsApiRef ref) {
  return SensorsApi(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
SensorTypesApi sensorTypesApi(SensorTypesApiRef ref) {
  return SensorTypesApi(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
SensorEntriesApi sensorEntriesApi(SensorEntriesApiRef ref) {
  return SensorEntriesApi(ref.watch(apiClientProvider));
}
