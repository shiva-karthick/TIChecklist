// import 'package:flutter/material.dart';
// import 'package:provider_architecture/ui/shared/ui_helpers.dart';
// import 'package:provider_architecture/ui/views/base_view.dart';
// // import 'package:provider_architecture/core/viewModels/likebutton_model.dart';

// /// The LikeButton will have its own view model, this is done so if the like
// /// button updates the whole UI doesn't update

// class LikeButton extends StatelessWidget {
//   final int postId;

//   const LikeButton({Key key, this.postId}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BaseView<LikeButtonModel>(
//       builder: (context, model, child) => Row(
//         children: <Widget>[
//           // Text("Likes : ${model.postLikes(postId)}"),
//           // UIHelper.horizontalSpaceSmall(),
//           // MaterialButton(
//           //   color: Colors.white,
//           //   child: Icon(Icons.thumb_up),
//           //   onPressed: () => {model.increaseLikes(postId)},
//           // ),
//           // UIHelper.horizontalSpaceSmall(),
//           // MaterialButton(
//           //   color: Colors.white,
//           //   child: Icon(Icons.thumb_down),
//           //   onPressed: () => {model.decreaseLikes(postId)},
//           // ),
//         ],
//       ),
//     );
//   }
// }
