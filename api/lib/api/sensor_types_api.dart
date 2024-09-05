//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SensorTypesApi {
  SensorTypesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a sensor type by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] typeId (required):
  ///   The ID of the sensor type
  Future<Response> deleteSensorTypeWithHttpInfo(int typeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/types/{typeId}'
      .replaceAll('{typeId}', typeId.toString());

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

  /// Delete a sensor type by ID
  ///
  /// Parameters:
  ///
  /// * [int] typeId (required):
  ///   The ID of the sensor type
  Future<void> deleteSensorType(int typeId,) async {
    final response = await deleteSensorTypeWithHttpInfo(typeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a sensor type by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] typeId (required):
  ///   The ID of the sensor type
  Future<Response> getSensorTypeByIdWithHttpInfo(int typeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/types/{typeId}'
      .replaceAll('{typeId}', typeId.toString());

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

  /// Get a sensor type by ID
  ///
  /// Parameters:
  ///
  /// * [int] typeId (required):
  ///   The ID of the sensor type
  Future<TypeDto?> getSensorTypeById(int typeId,) async {
    final response = await getSensorTypeByIdWithHttpInfo(typeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TypeDto',) as TypeDto;
    
    }
    return null;
  }

  /// Get all sensor types
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSensorTypesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/types';

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

  /// Get all sensor types
  Future<List<TypeDto>?> getSensorTypes() async {
    final response = await getSensorTypesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TypeDto>') as List)
        .cast<TypeDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create a new sensor type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TypeDto] typeDto (required):
  ///   The sensor type to create
  Future<Response> postSensorTypeWithHttpInfo(TypeDto typeDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/types';

    // ignore: prefer_final_locals
    Object? postBody = typeDto;

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

  /// Create a new sensor type
  ///
  /// Parameters:
  ///
  /// * [TypeDto] typeDto (required):
  ///   The sensor type to create
  Future<TypeDto?> postSensorType(TypeDto typeDto,) async {
    final response = await postSensorTypeWithHttpInfo(typeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TypeDto',) as TypeDto;
    
    }
    return null;
  }

  /// Update a sensor type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TypeDto] typeDto (required):
  ///   The sensor type to update
  Future<Response> putSensorTypeWithHttpInfo(TypeDto typeDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/types/{typeId}';

    // ignore: prefer_final_locals
    Object? postBody = typeDto;

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

  /// Update a sensor type
  ///
  /// Parameters:
  ///
  /// * [TypeDto] typeDto (required):
  ///   The sensor type to update
  Future<TypeDto?> putSensorType(TypeDto typeDto,) async {
    final response = await putSensorTypeWithHttpInfo(typeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TypeDto',) as TypeDto;
    
    }
    return null;
  }
}
