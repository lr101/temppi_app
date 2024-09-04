# openapi.api.SensorsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://http*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSensor**](SensorsApi.md#deletesensor) | **DELETE** /rest/v1/sensors/{sensorId} | Delete a sensor by ID
[**getSensorById**](SensorsApi.md#getsensorbyid) | **GET** /rest/v1/sensors/{sensorId} | Get a sensor by ID
[**getSensors**](SensorsApi.md#getsensors) | **GET** /rest/v1/sensors | Get all sensors
[**postSensor**](SensorsApi.md#postsensor) | **POST** /rest/v1/sensors | Create a new sensor
[**putSensor**](SensorsApi.md#putsensor) | **PUT** /rest/v1/sensors/{sensorId} | Update a sensor


# **deleteSensor**
> deleteSensor(sensorId)

Delete a sensor by ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorsApi();
final sensorId = sensorId_example; // String | The ID of the sensor

try {
    api_instance.deleteSensor(sensorId);
} catch (e) {
    print('Exception when calling SensorsApi->deleteSensor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorId** | **String**| The ID of the sensor | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSensorById**
> SensorDto getSensorById(sensorId)

Get a sensor by ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorsApi();
final sensorId = sensorId_example; // String | The ID of the sensor

try {
    final result = api_instance.getSensorById(sensorId);
    print(result);
} catch (e) {
    print('Exception when calling SensorsApi->getSensorById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorId** | **String**| The ID of the sensor | 

### Return type

[**SensorDto**](SensorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSensors**
> List<SensorDto> getSensors()

Get all sensors

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorsApi();

try {
    final result = api_instance.getSensors();
    print(result);
} catch (e) {
    print('Exception when calling SensorsApi->getSensors: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SensorDto>**](SensorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSensor**
> SensorDto postSensor(sensorDto)

Create a new sensor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorsApi();
final sensorDto = SensorDto(); // SensorDto | The sensor to create

try {
    final result = api_instance.postSensor(sensorDto);
    print(result);
} catch (e) {
    print('Exception when calling SensorsApi->postSensor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorDto** | [**SensorDto**](SensorDto.md)| The sensor to create | 

### Return type

[**SensorDto**](SensorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putSensor**
> SensorDto putSensor(sensorId, sensorDto)

Update a sensor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorsApi();
final sensorId = sensorId_example; // String | The ID of the sensor
final sensorDto = SensorDto(); // SensorDto | The sensor to update

try {
    final result = api_instance.putSensor(sensorId, sensorDto);
    print(result);
} catch (e) {
    print('Exception when calling SensorsApi->putSensor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorId** | **String**| The ID of the sensor | 
 **sensorDto** | [**SensorDto**](SensorDto.md)| The sensor to update | 

### Return type

[**SensorDto**](SensorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

