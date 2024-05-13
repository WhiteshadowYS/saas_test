import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  String get envName => dotenv.get('ENVIRONMENT_NAME');
  String get apiUrl => dotenv.get('API_URL');

  Future<void> init() async {}
  Future<void> override() async {}
}
