import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:saas/application/config/config.dart';

class SourceConfig extends Config {
  @override
  Future<void> initEnv(String? envName) async {
    try {
      await dotenv.load(fileName: 'environments/.env.$envName');
    } catch (e) {
      print('Dot Env load catch error, $e');
      await dotenv.load(fileName: 'environments/.env.$envName');
    }
  }
}
