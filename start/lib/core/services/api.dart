import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider_architecture/core/models/comment.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/models/user.dart';
import 'package:http/http.dart' as http;

/// The service responsible for networking requests
class Api {
  static const endpoint = 'https://jsonplaceholder.typicode.com';

  /// Internal data to store a list of filepaths
  List<String> filePaths = [];

  var client = new http.Client();

  Future<User> getUserProfile(int userId) async {
    // Get user profile for id
    var response = await client.get('$endpoint/users/$userId');

    // Convert and return
    return User.fromJson(json.decode(response.body));
  }

  // Future<String> get _localPath async {
  //   final directory = await getExternalStorageDirectory();
  //   return directory.path;
  // }

  /// Get all the files in the directory
  Future<void> _showFilesinDir() async {
    final dir = await getExternalStorageDirectory();

    for (var i = 0; i < 2; i++) {
      dir.list(recursive: false, followLinks: false).listen(
        (FileSystemEntity entity) {
          filePaths = filePaths.toSet().toList();
          filePaths.add(entity.path);
          filePaths = filePaths.toSet().toList();
        },
      );
    }
    for (var i = 0; i < 2; i++) {
      dir.list(recursive: false, followLinks: false).listen(
        (FileSystemEntity entity) {
          filePaths = filePaths.toSet().toList();
          filePaths.add(entity.path);
          filePaths = filePaths.toSet().toList();
        },
      );
    }
    if (filePaths.isEmpty) {
      for (var i = 0; i < 4; i++) {
        dir.list(recursive: false, followLinks: false).listen(
          (FileSystemEntity entity) {
            filePaths = filePaths.toSet().toList();
            filePaths.add(entity.path);
            filePaths = filePaths.toSet().toList();
          },
        );
      }
    }
  }

  //List<Post>
  Future<List<Post>> getPostsForUser() async {
    // Get all the directory names stores in a List
    _showFilesinDir();

    List<Post> posts = [];
    // Get user posts for id
    // var response = await client.get('$endpoint/posts?userId=$userId');

    if (await Permission.storage.request().isGranted) {
      for (var path in filePaths) {
        try {
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

  Future<List<Comment>> getCommentsForPost(int postId) async {
    List<Comment> comments = [];

    // Get comments for post
    var response = await client.get('$endpoint/comments?postId=$postId');

    // Parse into List
    var parsed = json.decode(response.body) as List<dynamic>;

    // Loop and convert each item to a Comment
    for (var comment in parsed) {
      comments.add(Comment.fromJson(comment));
    }

    return comments;
  }
}
