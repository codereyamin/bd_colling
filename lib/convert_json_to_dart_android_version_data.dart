import 'dart:convert';

import 'package:bd_colling/android_version_model.dart';

List<AndroidVersion> convertJsonToAndroidVersions(String jsonStr) {
  List<AndroidVersion> androidVersions = [];
  /////////////// json string to dart convert
  List<dynamic> data = json.decode(jsonStr);
//////////////// for loop using all data convert to dart object
  for (var item in data) {
    //////////// first check data is map
    if (item is Map<String, dynamic>) {
      ///////// data is map than loop use to all data
      item.forEach((key, value) {
        ////////////// map data convert dart object & insert list
        if (value is Map<String, dynamic>) {
          androidVersions.add(
            AndroidVersion(
              id: value['id'] as int?,
              title: value['title'] as String?,
            ),
          );
        }
        ///////////////  check data is list type
        else if (value is List<dynamic>) {
          ///////// data is list than use loop to all data
          for (var version in value) {
            /////////////// list data convert dart object & insert to list
            androidVersions.add(AndroidVersion(
              id: version['id'] as int?,
              title: version['title'] as String?,
            ));
          }
        }
      });
      ///////////////  check data is list type
    } else if (item is List<dynamic>) {
      ///////// data is list than use loop to all data
      for (var version in item) {
        /////////////// list data convert dart object & insert to list
        androidVersions.add(AndroidVersion(
          id: version['id'] as int?,
          title: version['title'] as String?,
        ));
      }
    }
  }
////////////////// after all data check and convert to dart object than return converted dart list
  return androidVersions;
}
