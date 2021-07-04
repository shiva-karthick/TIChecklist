import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import './base_model.dart';

class VehicleModel extends BaseModel {
  Map<String, dynamic> modifiedData = {};

  Future<String> get localPath async {
    final directory = await getExternalStorageDirectory();
    return directory.path;
  }

  // Future<File> get localFile async {
  //   final path = await localPath;
  //   return File('$path/.json');
  // }

  Future<File> requestPermissionAndWriteData(_data) async {
    String detachment = _data["detachment"];
    if (await Permission.storage.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      final path = await localPath;

      final file = File('$path/$detachment.json');
      // Create a new Map<String,dynamic>
      modifiedData = {}..addAll(_data);
      // Get the keys and convert all DateTime objects to String
      for (String key in modifiedData.keys) {
        if (key.contains('Date') || key.contains('date')) {
          print(modifiedData[key]);
          modifiedData[key] =
              DateFormat("yyyy-MM-dd hh:mm:ss").format(modifiedData[key]);
        }
      }
      print(modifiedData);
      return file.writeAsString(json.encode(modifiedData));
    } else {
      await Permission.storage.request();
      return null;
    }
  }

  Future<Map<String, dynamic>> readData() async {
    try {
      final path = await localPath;
      final file = File('$path/N36.json');
      Map<String, dynamic> myJson =
          await json.decode(await file.readAsString());
      print(myJson.toString());
    } catch (e) {
      // If encountering an error, return 0
      print(e);
    }
  }
}
