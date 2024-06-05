import 'package:go_router/go_router.dart';
import 'package:saas/application/config/config.dart';

typedef SetEnvironmentCallback = void Function(String);
typedef GetRouterFunction = GoRouter Function(SetEnvironmentCallback);

abstract class AppRouter {
  static AppRouter get instance => getIt<AppRouter>();
  GetRouterFunction get getRouter;
}
