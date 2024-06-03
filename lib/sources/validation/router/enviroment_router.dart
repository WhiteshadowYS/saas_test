import 'package:go_router/go_router.dart';
import 'package:saas/application/presentation/login_screen.dart';
import 'package:saas/application/router/app_router.dart';
import 'package:saas/application/router/base_router.dart';
import 'package:saas/sources/validation/screens/home/home_screen.dart';

class EnvironmentRouter implements BaseRouter {
  static GoRouter getRouter(SetEnvironmentCallback setEnvironmentCallback) {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => LoginScreen(
            setEnvironmentCallback: setEnvironmentCallback,
          ),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => HomeScreen(),
        ),
      ],
    );
  }
}
