import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:saas/application/presentation/login_screen.dart';
import 'package:saas/application/router/app_router.dart';

import '../config/config.dart';
import '../screens/home/home_screen.dart';

@Injectable(as: AppRouter, env: [enviromentName])
class EnvironmentRouter implements AppRouter {
  @override
  GetRouterFunction get getRouter => _getRouter;

  GoRouter _getRouter(SetEnvironmentCallback setEnvironmentCallback) {
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
          builder: (context, state) => HomeScreen(
            setEnvironmentCallback: setEnvironmentCallback,
          ),
        ),
      ],
    );
  }
}
