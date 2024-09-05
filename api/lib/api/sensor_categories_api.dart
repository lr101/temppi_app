//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SensorCategoriesApi {
  SensorCategoriesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new sensor category
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CategoryDto] categoryDto (required):
  ///   The sensor category to create
  Future<Response> createSensorCategoryWithHttpInfo(CategoryDto categoryDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/categories';

    // ignore: prefer_final_locals
    Object? postBody = categoryDto;

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

  /// Create a new sensor category
  ///
  /// Parameters:
  ///
  /// * [CategoryDto] categoryDto (required):
  ///   The sensor category to create
  Future<CategoryDto?> createSensorCategory(CategoryDto categoryDto,) async {
    final response = await createSensorCategoryWithHttpInfo(categoryDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryDto',) as CategoryDto;
    
    }
    return null;
  }

  /// Delete a sensor category by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   The ID of the sensor category to delete
  Future<Response> deleteSensorCategoryWithHttpInfo(int categoryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/categories/{categoryId}'
      .replaceAll('{categoryId}', categoryId.toString());

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

  /// Delete a sensor category by ID
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   The ID of the sensor category to delete
  Future<void> deleteSensorCategory(int categoryId,) async {
    final response = await deleteSensorCategoryWithHttpInfo(categoryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all sensor categories
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllSensorCategoriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/categories';

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

  /// Get all sensor categories
  Future<List<CategoryDto>?> getAllSensorCategories() async {
    final response = await getAllSensorCategoriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CategoryDto>') as List)
        .cast<CategoryDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get a sensor category by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   The ID of the sensor category to retrieve
  Future<Response> getSensorCategoryByIdWithHttpInfo(int categoryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/categories/{categoryId}'
      .replaceAll('{categoryId}', categoryId.toString());

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

  /// Get a sensor category by ID
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   The ID of the sensor category to retrieve
  Future<CategoryDto?> getSensorCategoryById(int categoryId,) async {
    final response = await getSensorCategoryByIdWithHttpInfo(categoryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryDto',) as CategoryDto;
    
    }
    return null;
  }

  /// Update a sensor category
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   The ID of the sensor category to retrieve
  ///
  /// * [CategoryDto] categoryDto (required):
  ///   The sensor category to update
  Future<Response> updateSensorCategoryWithHttpInfo(int categoryId, CategoryDto categoryDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/rest/v1/categories/{categoryId}'
      .replaceAll('{categoryId}', categoryId.toString());

    // ignore: prefer_final_locals
    Object? postBody = categoryDto;

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

  /// Update a sensor category
  ///
  /// Parameters:
  ///
  /// * [int] categoryId (required):
  ///   The ID of the sensor category to retrieve
  ///
  /// * [CategoryDto] categoryDto (required):
  ///   The sensor category to update
  Future<CategoryDto?> updateSensorCategory(int categoryId, CategoryDto categoryDto,) async {
    final response = await updateSensorCategoryWithHttpInfo(categoryId, categoryDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CategoryDto',) as CategoryDto;
    
    }
    return null;
  }
}
