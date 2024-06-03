import 'package:go_router/go_router.dart';
import 'package:saas/application/presentation/login_screen.dart';
import 'package:saas/application/router/app_router.dart';
import 'package:saas/application/router/base_router.dart';

class CommonRouter implements BaseRouter {
  static GoRouter getRouter(SetEnvironmentCallback setEnvironmentCallback) {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          name: 'LoginScreenRoute',
          path: '/',
          builder: (context, state) => LoginScreen(
            setEnvironmentCallback: setEnvironmentCallback,
          ),
        ),
      ],
    );
  }
}
