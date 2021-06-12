import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/services/post_service.dart';
import 'package:provider_architecture/core/viewModels/base_model.dart';
import 'package:provider_architecture/locator.dart';
import './base_model.dart';
import '../../locator.dart';

class HomeModel extends BaseModel {
  PostsService _postsService = locator<PostsService>();

  List<Post> get posts => _postsService.posts;

  Future getPosts(int userID) async {
    setState(ViewState.Busy);
    await _postsService.getPostsForUsers(userID);
    setState(ViewState.Idle);
  }
}
