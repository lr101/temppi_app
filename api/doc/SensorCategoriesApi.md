# openapi.api.SensorCategoriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://http*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSensorCategory**](SensorCategoriesApi.md#createsensorcategory) | **POST** /rest/v1/categories | Create a new sensor category
[**deleteSensorCategory**](SensorCategoriesApi.md#deletesensorcategory) | **DELETE** /rest/v1/categories/{categoryId} | Delete a sensor category by ID
[**getAllSensorCategories**](SensorCategoriesApi.md#getallsensorcategories) | **GET** /rest/v1/categories | Get all sensor categories
[**getSensorCategoryById**](SensorCategoriesApi.md#getsensorcategorybyid) | **GET** /rest/v1/categories/{categoryId} | Get a sensor category by ID
[**updateSensorCategory**](SensorCategoriesApi.md#updatesensorcategory) | **PUT** /rest/v1/categories/{categoryId} | Update a sensor category


# **createSensorCategory**
> CategoryDto createSensorCategory(categoryDto)

Create a new sensor category

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorCategoriesApi();
final categoryDto = CategoryDto(); // CategoryDto | The sensor category to create

try {
    final result = api_instance.createSensorCategory(categoryDto);
    print(result);
} catch (e) {
    print('Exception when calling SensorCategoriesApi->createSensorCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryDto** | [**CategoryDto**](CategoryDto.md)| The sensor category to create | 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSensorCategory**
> deleteSensorCategory(categoryId)

Delete a sensor category by ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorCategoriesApi();
final categoryId = 789; // int | The ID of the sensor category to delete

try {
    api_instance.deleteSensorCategory(categoryId);
} catch (e) {
    print('Exception when calling SensorCategoriesApi->deleteSensorCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| The ID of the sensor category to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSensorCategories**
> List<CategoryDto> getAllSensorCategories()

Get all sensor categories

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorCategoriesApi();

try {
    final result = api_instance.getAllSensorCategories();
    print(result);
} catch (e) {
    print('Exception when calling SensorCategoriesApi->getAllSensorCategories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CategoryDto>**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSensorCategoryById**
> CategoryDto getSensorCategoryById(categoryId)

Get a sensor category by ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorCategoriesApi();
final categoryId = 789; // int | The ID of the sensor category to retrieve

try {
    final result = api_instance.getSensorCategoryById(categoryId);
    print(result);
} catch (e) {
    print('Exception when calling SensorCategoriesApi->getSensorCategoryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| The ID of the sensor category to retrieve | 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSensorCategory**
> CategoryDto updateSensorCategory(categoryId, categoryDto)

Update a sensor category

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorCategoriesApi();
final categoryId = 789; // int | The ID of the sensor category to retrieve
final categoryDto = CategoryDto(); // CategoryDto | The sensor category to update

try {
    final result = api_instance.updateSensorCategory(categoryId, categoryDto);
    print(result);
} catch (e) {
    print('Exception when calling SensorCategoriesApi->updateSensorCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| The ID of the sensor category to retrieve | 
 **categoryDto** | [**CategoryDto**](CategoryDto.md)| The sensor category to update | 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

