import 'package:auto_route/auto_route.dart';
import 'package:saas/application/router/app_router.gr.dart';

export 'package:auto_route/auto_route.dart';
export 'package:saas/application/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        path: '/splash',
        page: SplashRoute.page,
        initial: true,
      ),
      AutoRoute(
        path: '/auth',
        page: LoginRoute.page,
      ),
    ];
  }
}
