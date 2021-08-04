import 'package:provider_architecture/core/models/post.dart';

import '../../locator.dart';
import 'api.dart';

class PostsService {
  Api _api = locator<Api>();

  List<Post> _posts;
  List<Post> get posts => _posts;

  Future<List<Post>> getPosts() async {
    return await _api.getPostsForUser();
  }
}
