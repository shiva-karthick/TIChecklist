import 'package:intl/intl.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/services/post_service.dart';
import 'package:provider_architecture/core/viewModels/base_model.dart';

import '../../locator.dart';

class PostViewModel extends BaseModel {
  // Get the total number of likes
  // int postLikes(int postId) {
  //   return _postsService.posts.firstWhere((post) => post.id == postId).likes;
  // }

  // increaseLikes(int postId) {
  //   _postsService.incrementLikes(postId);
  //   notifyListeners();
  // }

  // decreaseLikes(int postId) {
  //   _postsService.decrementLikes(postId);
  //   notifyListeners();
  // }

  Post post;

  // Covert DateTime from String to DateTime object
  DateTime convertToDateTime(String DateTime) {
    return DateFormat("yyyy-MM-dd hh:mm:ss").parse(DateTime);
  }

  // List missingKeys = post.json["as"];
}
