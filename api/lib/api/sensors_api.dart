//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SensorsApi {
  SensorsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a sensor by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  Future<Response> deleteSensorWithHttpInfo(
    String sensorId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/rest/v1/sensors/{sensorId}'.replaceAll('{sensorId}', sensorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Delete a sensor by ID
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  Future<void> deleteSensor(
    String sensorId,
  ) async {
    final response = await deleteSensorWithHttpInfo(
      sensorId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a sensor by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  Future<Response> getSensorByIdWithHttpInfo(
    String sensorId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/rest/v1/sensors/{sensorId}'.replaceAll('{sensorId}', sensorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get a sensor by ID
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  Future<SensorDto?> getSensorById(
    String sensorId,
  ) async {
    final response = await getSensorByIdWithHttpInfo(
      sensorId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SensorDto',
      ) as SensorDto;
    }
    return null;
  }

  /// Get all sensors
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSensorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/sensors';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get all sensors
  Future<List<SensorDto>?> getSensors() async {
    final response = await getSensorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SensorDto>')
              as List)
          .cast<SensorDto>()
          .toList(growable: false);
    }
    return null;
  }

  /// Create a new sensor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SensorDto] sensorDto (required):
  ///   The sensor to create
  Future<Response> postSensorWithHttpInfo(
    SensorDto sensorDto,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/sensors';

    // ignore: prefer_final_locals
    Object? postBody = sensorDto;

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

  /// Create a new sensor
  ///
  /// Parameters:
  ///
  /// * [SensorDto] sensorDto (required):
  ///   The sensor to create
  Future<SensorDto?> postSensor(
    SensorDto sensorDto,
  ) async {
    final response = await postSensorWithHttpInfo(
      sensorDto,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SensorDto',
      ) as SensorDto;
    }
    return null;
  }

  /// Update a sensor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [SensorDto] sensorDto (required):
  ///   The sensor to update
  Future<Response> putSensorWithHttpInfo(
    String sensorId,
    SensorDto sensorDto,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/rest/v1/sensors/{sensorId}'.replaceAll('{sensorId}', sensorId);

    // ignore: prefer_final_locals
    Object? postBody = sensorDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a sensor
  ///
  /// Parameters:
  ///
  /// * [String] sensorId (required):
  ///   The ID of the sensor
  ///
  /// * [SensorDto] sensorDto (required):
  ///   The sensor to update
  Future<SensorDto?> putSensor(
    String sensorId,
    SensorDto sensorDto,
  ) async {
    final response = await putSensorWithHttpInfo(
      sensorId,
      sensorDto,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SensorDto',
      ) as SensorDto;
    }
    return null;
  }
}
