import 'package:go_router/go_router.dart';
import 'package:saas/application/router/app_router.dart';

abstract class BaseRouter {
  static GoRouter getRouter(SetEnvironmentCallback setEnvironmentCallback) => GoRouter(routes: []);
}
