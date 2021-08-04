import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/core/enums/viewstate.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/core/models/user.dart';
import 'package:provider_architecture/core/viewModels/home_model.dart';
import 'package:provider_architecture/ui/shared/app_colors.dart';
import 'package:provider_architecture/ui/shared/text_styles.dart';
import 'package:provider_architecture/ui/shared/ui_helpers.dart';
import 'package:provider_architecture/ui/views/base_view.dart';
import 'package:provider_architecture/ui/widgets/floating_button.dart';
import 'package:provider_architecture/ui/widgets/postlist_item.dart';
import 'dart:async';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) {
        model.getFiles();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context); // pop current page
              Navigator.pushNamed(context, "/login"); // push it back in
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Welcome ${Provider.of<User>(context).username}'),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                model.getFiles();
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case 'Help':
                    Navigator.pushNamed(context, "/Help");
                    break;
                  case 'Licenses':
                    Navigator.pushNamed(context, "/Licenses");
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return {'Help', 'Licenses'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: model.state == ViewState.Idle
            ? SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // UIHelper.verticalSpaceSmall(),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0),
                    //   child: Text(
                    //     'Welcome ${Provider.of<User>(context).username}',
                    //     style: headerStyle,
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20.0),
                    //   child: Text('Here are all your vehicle data',
                    //       style: subHeaderStyle),
                    // ),
                    // UIHelper.verticalSpaceSmall(),
                    model.posts.length != 0
                        ? Expanded(
                            child: getPostsUi(model.posts),
                          )
                        : Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 160.0, 8.0, 8.0),
                            child: Center(
                              child: Text(
                                " No posts here. \n Click the green button to get started.",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
        floatingActionButton: floatingActionButton(),
      ),
    );
  }

  Widget getPostsUi(List<Post> posts) => ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => PostListItem(
          post: posts[index],
          onTap: () {
            Navigator.pushNamed(context, '/post', arguments: posts[index]);
          },
        ),
      );
}
