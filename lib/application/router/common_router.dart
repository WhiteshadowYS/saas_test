import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:saas/application/presentation/login_screen.dart';
import 'package:saas/application/router/app_router.dart';

@Injectable(as: AppRouter, env: ['default'])
class CommonRouter implements AppRouter {
  @override
  GetRouterFunction get getRouter => _getRouter;

  GoRouter _getRouter(SetEnvironmentCallback setEnvironmentCallback) {
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
