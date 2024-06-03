import 'package:go_router/go_router.dart';
import 'package:saas/application/config/config.dart';

typedef SetEnvironmentCallback = void Function(String);
typedef GetRouterFunction = GoRouter Function(SetEnvironmentCallback);

class AppRouter {
  static AppRouter get instance => getIt<AppRouter>();

  final GetRouterFunction router;

  AppRouter({required this.router});
}
