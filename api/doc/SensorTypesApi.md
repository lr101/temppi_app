# openapi.api.SensorTypesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://http*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSensorType**](SensorTypesApi.md#deletesensortype) | **DELETE** /rest/v1/types/{typeId} | Delete a sensor type by ID
[**getSensorTypeById**](SensorTypesApi.md#getsensortypebyid) | **GET** /rest/v1/types/{typeId} | Get a sensor type by ID
[**getSensorTypes**](SensorTypesApi.md#getsensortypes) | **GET** /rest/v1/types | Get all sensor types
[**postSensorType**](SensorTypesApi.md#postsensortype) | **POST** /rest/v1/types | Create a new sensor type
[**putSensorType**](SensorTypesApi.md#putsensortype) | **PUT** /rest/v1/types/{typeId} | Update a sensor type


# **deleteSensorType**
> deleteSensorType(typeId)

Delete a sensor type by ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorTypesApi();
final typeId = 789; // int | The ID of the sensor type

try {
    api_instance.deleteSensorType(typeId);
} catch (e) {
    print('Exception when calling SensorTypesApi->deleteSensorType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeId** | **int**| The ID of the sensor type | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSensorTypeById**
> TypeDto getSensorTypeById(typeId)

Get a sensor type by ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorTypesApi();
final typeId = 789; // int | The ID of the sensor type

try {
    final result = api_instance.getSensorTypeById(typeId);
    print(result);
} catch (e) {
    print('Exception when calling SensorTypesApi->getSensorTypeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeId** | **int**| The ID of the sensor type | 

### Return type

[**TypeDto**](TypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSensorTypes**
> List<TypeDto> getSensorTypes()

Get all sensor types

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorTypesApi();

try {
    final result = api_instance.getSensorTypes();
    print(result);
} catch (e) {
    print('Exception when calling SensorTypesApi->getSensorTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TypeDto>**](TypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSensorType**
> TypeDto postSensorType(typeDto)

Create a new sensor type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorTypesApi();
final typeDto = TypeDto(); // TypeDto | The sensor type to create

try {
    final result = api_instance.postSensorType(typeDto);
    print(result);
} catch (e) {
    print('Exception when calling SensorTypesApi->postSensorType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeDto** | [**TypeDto**](TypeDto.md)| The sensor type to create | 

### Return type

[**TypeDto**](TypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putSensorType**
> TypeDto putSensorType(typeDto)

Update a sensor type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorTypesApi();
final typeDto = TypeDto(); // TypeDto | The sensor type to update

try {
    final result = api_instance.putSensorType(typeDto);
    print(result);
} catch (e) {
    print('Exception when calling SensorTypesApi->putSensorType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **typeDto** | [**TypeDto**](TypeDto.md)| The sensor type to update | 

### Return type

[**TypeDto**](TypeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

