import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saas/application/router/app_router.dart';
import 'package:saas/application/source/navigation/bloc/navigation_bloc.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NavigationBloc, NavigationState, AppRouter?>(
      selector: (state) => state.router,
      builder: (context, router) {
        return MaterialApp.router(
          color: Colors.red,
          routerConfig: router?.config(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
