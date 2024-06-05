import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:saas/application/config/config.dart';
import 'package:saas/application/router/app_router.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late GoRouter _goRouter;

  @override
  void initState() {
    super.initState();
    _goRouter = AppRouter.instance.getRouter(_setEnvironment);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _goRouter,
    );
  }

  void _setEnvironment(String environment) async {
    await _loadEnvironmentData(environment);
    setState(() => _goRouter = AppRouter.instance.getRouter(_setEnvironment));

    switch (environment) {
      case 'default':
        _goRouter.go('/');
        break;
      default:
        _goRouter.go('/home');
    }
  }

  Future<void> _loadEnvironmentData(String environment) async {
    final fileName = "environments/.env.$environment";
    await dotenv.load(fileName: fileName);
    configureDependencies(environment);
  }
}
