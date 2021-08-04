import 'dart:convert';
import 'dart:io' show Platform;
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider_architecture/core/models/post.dart';

class Api {
  /// Internal data to store a list of filepaths
  List<String> filePaths = [];

  // Future<String> get _localPath async {
  //   final directory = await getExternalStorageDirectory();
  //   return directory.path;
  // }

  /// Get all the files in the directory
  ///
  /// See https://flutter.dev/docs/cookbook/persistence/reading-writing-files
  Future<void> _showFilesinDir() async {
    /// if (Platform.isAndroid) {
    ///   final dir = await getExternalStorageDirectory();
    /// } else if (Platform.isIOS) {
    ///   final dir = await getApplicationDocumentsDirectory();
    /// }
    final dir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    for (var i = 0; i < 15; i++) {
      dir.list(recursive: false, followLinks: false).listen(
        (FileSystemEntity entity) {
          filePaths = filePaths.toSet().toList();
          filePaths.add(entity.path);
          filePaths = filePaths.toSet().toList();
        },
      );
    }
  }

  /// Retrieve all files stored in the local storage for the user.
  ///
  /// Show them in the Home Screen.
  /// See https://flutter.dev/docs/cookbook/persistence/reading-writing-files
  Future<List<Post>> getPostsForUser() async {
    // Get all the directory names stores in a List
    _showFilesinDir();

    List<Post> posts = [];

    if (await Permission.storage.request().isGranted) {
      for (var path in filePaths) {
        try {
          // print(path);
          var file = File('$path');

          Map<String, dynamic> myJson =
              await json.decode(await file.readAsString());

          posts.add(Post.fromJson(myJson));
        } catch (e) {
          print(e);
        }
      }
    } else {
      await Permission.storage.request();
    }

    // posts.forEach(
    //   (element) {
    //     print(element.detachment);
    //   },
    // );

    // parse into List
    // var parsed = json.decode(response.body) as List<dynamic>;

    // loop and convert each item to Post
    // for (var post in parsed) {
    //   posts.add(Post.fromJson(post));
    // }

    return posts;
  }

  /// Deletes the file at the given path for both Android and IOS.
  ///
  /// See https://flutter.dev/docs/cookbook/persistence/reading-writing-files
  Future<int> deleteFile(String fileName) async {
    try {
      filePaths.removeWhere((element) => element == fileName);
      final file = File(fileName);
      if (await file.exists()) {
        await file.delete();
      }
      return 1;
    } catch (e) {
      return 0;
    }
  }
}
