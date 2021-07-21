import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/views/home_view.dart';
import 'package:provider_architecture/ui/views/login_view.dart';
import 'package:provider_architecture/ui/views/post_view.dart';
import 'package:provider_architecture/ui/views/rid_view.dart';
import 'package:provider_architecture/ui/views/tab_container.dart';
import 'package:provider_architecture/ui/views/test_view.dart';

class myRouter {
  /// static function that will generate our route
  /// return a dynamic variable
  ///
  /// the settings passed to the function is the information associated with the
  /// requested route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      // case '/rid/exterior':
      //   return MaterialPageRoute(builder: (_) => RidExterior());
      // case '/test':
      //   return MaterialPageRoute(builder: (_) => Test());
      case '/post':
        var post = settings.arguments as Post;
        return MaterialPageRoute(
          builder: (_) => PostView(
            post: post,
          ),
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
