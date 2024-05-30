import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:saas/application/config/config.config.dart';

late final GetIt getIt;

class Config {
  String get envName => dotenv.get('ENVIRONMENT_NAME');
  String get apiUrl => dotenv.get('API_URL');

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initEnv(null);
    initDependencies(this);
  }

  Future<void> initEnv(String? envName) async {
    try {
      await dotenv.load(fileName: 'environments/.env.default');
    } catch (e) {
      print('Dot Env load catch error, $e');
      await dotenv.load(fileName: 'environments/.env.default');
    }
  }
}

@injectableInit
void initDependencies(Config config) async {
  getIt = GetIt.asNewInstance();
  final gh = GetItHelper(getIt, config.envName);
  gh.singleton<Config>(config);
  getIt.init(environment: config.envName);
}
