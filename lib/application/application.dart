import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saas/application/config/config.dart';
import 'package:saas/application/router/app_router.dart';
import 'package:saas/application/source/application/bloc/application_bloc.dart';

class Application extends StatefulWidget {
  final Config config;
  const Application(this.config);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ApplicationBloc.instance.add(ApplicationEvent.init(widget.config));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplicationBloc, ApplicationState>(
      bloc: ApplicationBloc.instance,
      listener: (ctx, state) {
        switch (state) {
          case ApplicationState.initial:
            print('Initial');
          case ApplicationState.initialized:
            print('Initialized');
        }
      },
      child: MaterialApp.router(
        color: Colors.red,
        routerConfig: AppRouter().config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
