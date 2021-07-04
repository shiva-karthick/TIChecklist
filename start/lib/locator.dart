import 'package:get_it/get_it.dart';
import 'package:provider_architecture/core/services/authentication_service.dart';
import 'package:provider_architecture/core/services/post_service.dart';
import 'package:provider_architecture/core/viewModels/comments_model.dart';
import 'package:provider_architecture/core/viewModels/home_model.dart';
import 'package:provider_architecture/core/viewModels/likebutton_model.dart';
import 'package:provider_architecture/core/viewModels/login_model.dart';
import 'package:provider_architecture/core/viewModels/vehicle_model.dart';
import './core/services/api.dart';

GetIt locator = GetIt.instance;

// register services and models
void setupLocator() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => PostsService());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => LoginModel());

  locator.registerFactory(() => VehicleModel());
  locator.registerFactory(() => LikeButtonModel());
  locator.registerFactory(() => HomeModel());
  locator.registerFactory(() => CommentsModel());
}
