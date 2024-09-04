# openapi.api.SensorEntriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://http*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEntry**](SensorEntriesApi.md#deleteentry) | **DELETE** /rest/v1/sensors/{sensorId}/entry | Delete entries for a sensor
[**getEntries**](SensorEntriesApi.md#getentries) | **GET** /rest/v1/sensors/{sensorId}/entry | Get entries for a sensor
[**postEntry**](SensorEntriesApi.md#postentry) | **POST** /rest/v1/sensors/{sensorId}/entry | Create a new entry for a sensor


# **deleteEntry**
> deleteEntry(sensorId, date1, date2)

Delete entries for a sensor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorEntriesApi();
final sensorId = sensorId_example; // String | The ID of the sensor
final date1 = 2013-10-20T19:20:30+01:00; // DateTime | The start date (timestamp) for filtering entries
final date2 = 2013-10-20T19:20:30+01:00; // DateTime | The end date (timestamp) for filtering entries

try {
    api_instance.deleteEntry(sensorId, date1, date2);
} catch (e) {
    print('Exception when calling SensorEntriesApi->deleteEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorId** | **String**| The ID of the sensor | 
 **date1** | **DateTime**| The start date (timestamp) for filtering entries | [optional] 
 **date2** | **DateTime**| The end date (timestamp) for filtering entries | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntries**
> List<EntryDto> getEntries(sensorId, date1, date2, limit, interval)

Get entries for a sensor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorEntriesApi();
final sensorId = sensorId_example; // String | The ID of the sensor
final date1 = 2013-10-20T19:20:30+01:00; // DateTime | The start date (timestamp) for filtering entries
final date2 = 2013-10-20T19:20:30+01:00; // DateTime | The end date (timestamp) for filtering entries
final limit = 56; // int | The maximum number of entries to return
final interval = 56; // int | The interval for the graph data

try {
    final result = api_instance.getEntries(sensorId, date1, date2, limit, interval);
    print(result);
} catch (e) {
    print('Exception when calling SensorEntriesApi->getEntries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorId** | **String**| The ID of the sensor | 
 **date1** | **DateTime**| The start date (timestamp) for filtering entries | [optional] 
 **date2** | **DateTime**| The end date (timestamp) for filtering entries | [optional] 
 **limit** | **int**| The maximum number of entries to return | [optional] 
 **interval** | **int**| The interval for the graph data | [optional] 

### Return type

[**List<EntryDto>**](EntryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEntry**
> postEntry(sensorId, entryDto)

Create a new entry for a sensor

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SensorEntriesApi();
final sensorId = sensorId_example; // String | The ID of the sensor
final entryDto = EntryDto(); // EntryDto | The entry to create

try {
    api_instance.postEntry(sensorId, entryDto);
} catch (e) {
    print('Exception when calling SensorEntriesApi->postEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sensorId** | **String**| The ID of the sensor | 
 **entryDto** | [**EntryDto**](EntryDto.md)| The entry to create | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

