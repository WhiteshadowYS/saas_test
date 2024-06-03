import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:saas/application/router/app_router.dart';
import 'package:saas/application/router/common_router.dart';
import 'package:saas/sources/develop/router/enviroment_router.dart' as developEnv;
import 'package:saas/sources/validation/router/enviroment_router.dart' as validationEnv;

import 'config.config.dart';

const regular = const Environment('default');
const develop = const Environment('develop');
const validation = const Environment('validation');

ValueNotifier<GetIt?> _getItNitifier = ValueNotifier(null);
ValueNotifier<GetIt?> get getItNotifierGetter => _getItNitifier;
GetIt get getIt => _getItNitifier.value!;

@InjectableInit()
void configureDependencies(String environment) {
  _getItNitifier.value = GetIt.asNewInstance();
  getIt.init(environment: environment);
}

@module
abstract class RegisterModule {
  @injectable
  @regular
  AppRouter get commonRouter => AppRouter(router: CommonRouter.getRouter);

  @injectable
  @develop
  AppRouter get developRouter => AppRouter(router: developEnv.EnvironmentRouter.getRouter);

  @injectable
  @validation
  AppRouter get validationRouter => AppRouter(router: validationEnv.EnvironmentRouter.getRouter);
}
