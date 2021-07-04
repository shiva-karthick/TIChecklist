import 'package:provider_architecture/core/services/post_service.dart';
import 'package:provider_architecture/core/viewModels/base_model.dart';

import '../../locator.dart';

class LikeButtonModel extends BaseModel {
  PostsService _postsService = locator<PostsService>();

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
}
