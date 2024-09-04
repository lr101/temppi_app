//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SensorDto {
  /// Returns a new [SensorDto] instance.
  SensorDto({
    this.sensorId,
    this.sensorType,
    this.sensorNick,
    this.categories = const [],
  });

  /// The ID of the sensor
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sensorId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TypeDto? sensorType;

  /// The nickname of the sensor
  String? sensorNick;

  /// The categories of the sensor
  List<CategoryDto>? categories;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SensorDto &&
          other.sensorId == sensorId &&
          other.sensorType == sensorType &&
          other.sensorNick == sensorNick &&
          _deepEquality.equals(other.categories, categories);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (sensorId == null ? 0 : sensorId!.hashCode) +
      (sensorType == null ? 0 : sensorType!.hashCode) +
      (sensorNick == null ? 0 : sensorNick!.hashCode) +
      (categories == null ? 0 : categories!.hashCode);

  @override
  String toString() =>
      'SensorDto[sensorId=$sensorId, sensorType=$sensorType, sensorNick=$sensorNick, categories=$categories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sensorId != null) {
      json[r'sensorId'] = this.sensorId;
    } else {
      json[r'sensorId'] = null;
    }
    if (this.sensorType != null) {
      json[r'sensorType'] = this.sensorType;
    } else {
      json[r'sensorType'] = null;
    }
    if (this.sensorNick != null) {
      json[r'sensorNick'] = this.sensorNick;
    } else {
      json[r'sensorNick'] = null;
    }
    if (this.categories != null) {
      json[r'categories'] = this.categories;
    } else {
      json[r'categories'] = null;
    }
    return json;
  }

  /// Returns a new [SensorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SensorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SensorDto[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SensorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SensorDto(
        sensorId: mapValueOfType<String>(json, r'sensorId'),
        sensorType: TypeDto.fromJson(json[r'sensorType']),
        sensorNick: mapValueOfType<String>(json, r'sensorNick'),
        categories: CategoryDto.listFromJson(json[r'categories']),
      );
    }
    return null;
  }

  static List<SensorDto> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SensorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SensorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SensorDto> mapFromJson(dynamic json) {
    final map = <String, SensorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SensorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SensorDto-objects as value to a dart map
  static Map<String, List<SensorDto>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SensorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SensorDto.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
