import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/models/comment.dart';
import 'package:provider_architecture/core/services/api.dart';
import 'package:provider_architecture/core/viewModels/base_model.dart';

import '../../locator.dart';

class CommentsModel extends BaseModel {
  Api _api = locator<Api>();

  // A list of comments of type <Comment>
  List<Comment> comments;

  Future fetchComments(int postId) async {
    setState(ViewState.Busy);
    comments = await _api.getCommentsForPost(postId);
    setState(ViewState.Idle);
  }
}
