//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SensorEntriesApi {
  SensorEntriesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete entries for a sensor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [DateTime] date1:
  ///   The start date (timestamp) for filtering entries
  ///
  /// * [DateTime] date2:
  ///   The end date (timestamp) for filtering entries
  Future<Response> deleteEntryWithHttpInfo(String sensorId, { DateTime? date1, DateTime? date2, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/sensors/{sensorId}/entry'
      .replaceAll('{sensorId}', sensorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date1 != null) {
      queryParams.addAll(_queryParams('', 'date1', date1));
    }
    if (date2 != null) {
      queryParams.addAll(_queryParams('', 'date2', date2));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete entries for a sensor
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [DateTime] date1:
  ///   The start date (timestamp) for filtering entries
  ///
  /// * [DateTime] date2:
  ///   The end date (timestamp) for filtering entries
  Future<void> deleteEntry(String sensorId, { DateTime? date1, DateTime? date2, }) async {
    final response = await deleteEntryWithHttpInfo(sensorId,  date1: date1, date2: date2, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get entries for a sensor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [DateTime] date1:
  ///   The start date (timestamp) for filtering entries
  ///
  /// * [DateTime] date2:
  ///   The end date (timestamp) for filtering entries
  ///
  /// * [int] limit:
  ///   The maximum number of entries to return
  ///
  /// * [int] interval:
  ///   The interval for the graph data
  Future<Response> getEntriesWithHttpInfo(String sensorId, { DateTime? date1, DateTime? date2, int? limit, int? interval, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/sensors/{sensorId}/entry'
      .replaceAll('{sensorId}', sensorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date1 != null) {
      queryParams.addAll(_queryParams('', 'date1', date1));
    }
    if (date2 != null) {
      queryParams.addAll(_queryParams('', 'date2', date2));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (interval != null) {
      queryParams.addAll(_queryParams('', 'interval', interval));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get entries for a sensor
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [DateTime] date1:
  ///   The start date (timestamp) for filtering entries
  ///
  /// * [DateTime] date2:
  ///   The end date (timestamp) for filtering entries
  ///
  /// * [int] limit:
  ///   The maximum number of entries to return
  ///
  /// * [int] interval:
  ///   The interval for the graph data
  Future<List<EntryDto>?> getEntries(String sensorId, { DateTime? date1, DateTime? date2, int? limit, int? interval, }) async {
    final response = await getEntriesWithHttpInfo(sensorId,  date1: date1, date2: date2, limit: limit, interval: interval, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EntryDto>') as List)
        .cast<EntryDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create a new entry for a sensor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [EntryDto] entryDto (required):
  ///   The entry to create
  Future<Response> postEntryWithHttpInfo(String sensorId, EntryDto entryDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/sensors/{sensorId}/entry'
      .replaceAll('{sensorId}', sensorId);

    // ignore: prefer_final_locals
    Object? postBody = entryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new entry for a sensor
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [EntryDto] entryDto (required):
  ///   The entry to create
  Future<void> postEntry(String sensorId, EntryDto entryDto,) async {
    final response = await postEntryWithHttpInfo(sensorId, entryDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
