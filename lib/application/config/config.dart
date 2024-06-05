import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.config.dart';

const regular = const Environment('default');

ValueNotifier<GetIt?> _getItNitifier = ValueNotifier(null);
ValueNotifier<GetIt?> get getItNotifierGetter => _getItNitifier;
GetIt get getIt => _getItNitifier.value!;

@InjectableInit()
void configureDependencies(String environment) {
  _getItNitifier.value = GetIt.asNewInstance();
  getIt.init(environment: environment);
}
