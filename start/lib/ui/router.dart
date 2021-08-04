import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post.dart';
import 'package:provider_architecture/ui/views/home_view.dart';
import 'package:provider_architecture/ui/views/login_view.dart';
import 'package:provider_architecture/ui/views/menu_views/licenses_view.dart';
import 'package:provider_architecture/ui/views/menu_views/help_view.dart';
import 'package:provider_architecture/ui/views/post_view.dart';
import 'package:provider_architecture/ui/views/rid_view.dart';

/// myRouter is a static function that will generate routes for the app.
/// Returns a [dynamic variable]
///
/// ``` dart
/// if (settings.name) == '/' go to HomeView();
/// ```
/// The settings passed to the function is the information associated with the requested route
/// Defaults to a 404 like image if no route is matched.
/// See: https://flutter.github.io/docs/cookbook/dynamic-routes.html
class myRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeView(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case '/rid':
        return MaterialPageRoute(
          builder: (_) => RidView(),
        );
      case '/Help':
        return MaterialPageRoute(
          builder: (_) => HelpView(),
        );
      case '/Licenses':
        return MaterialPageRoute(
          builder: (_) => LicensesView(),
        );
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
                child: Text(
                  '404 error \n Oh no! No route defined for ${settings.name}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        );
    }
  }
}
