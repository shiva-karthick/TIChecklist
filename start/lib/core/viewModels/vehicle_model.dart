import 'dart:io' show Platform;
import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import './base_model.dart';

class VehicleModel extends BaseModel {
  Map<String, dynamic> modifiedData = {};

  /// Get the directory path from both Android and IOS
  ///
  /// Returns path in [String] data type.
  Future<String> get localPath async {
    // final directory = await getExternalStorageDirectory();
    // return directory.path;
    if (Platform.isAndroid) {
      final directory = await getExternalStorageDirectory();
      return directory.path;
    } else {
      final directory = await getApplicationDocumentsDirectory();
      return directory.path;
    }
  }

  // Future<File> get localFile async {
  //   final path = await localPath;
  //   return File('$path/.json');
  // }

  /// Save data as a JSON format to the local directory in both Android and IOS.
  ///
  /// Takes [_data] as a [dynamic] data type.
  ///
  /// Steps:
  /// 1. Save the [node_number] in a [String] variable.
  /// 2. Check if the Permission is granted.
  /// 3. Get the directory path.
  /// 4. Create a [File] object and save it into a variable [file].
  /// 5. Change all [DateTime] objects into [String] objects.
  /// 6. Finally save the JSON file.
  ///
  /// See https://flutter.dev/docs/cookbook/persistence/reading-writing-files
  /// See https://stackoverflow.com/questions/51042621/unable-to-convert-string-date-in-format-yyyymmddhhmmss-to-datetime-dart
  /// See https://stackoverflow.com/questions/55220612/how-to-save-a-text-file-in-external-storage-in-ios-using-flutter
  Future<File> requestPermissionAndWriteData(_data) async {
    String node_number = _data["node_number"];
    if (await Permission.storage.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      final path = await localPath;

      final file = File('$path/$node_number.json');
      // Create a new Map<String,dynamic>
      modifiedData = {}..addAll(_data);
      // Get the keys and convert all DateTime objects to String
      for (String key in modifiedData.keys) {
        if (key.contains('Date') || key.contains('date')) {
          // print(modifiedData[key]);
          modifiedData[key] =
              DateFormat("yyyy-MM-dd hh:mm:ss").format(modifiedData[key]);
        }
      }
      // print(modifiedData);
      return file.writeAsString(json.encode(modifiedData));
    } else {
      await Permission.storage.request();
      return null;
    }
  }

  /// Used for testing purposes only.
  Future<Map<String, dynamic>> readData() async {
    try {
      final path = await localPath;
      final file = File('$path/Node 36 RID2.json');
      Map<String, dynamic> myJson =
          await json.decode(await file.readAsString());
      print(myJson.toString());
    } catch (e) {
      // If encountering an error, return 0
      print(e);
    }
  }
}
