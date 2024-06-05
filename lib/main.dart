import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:saas/application/application.dart';
import 'package:saas/application/config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "environments/.env.default");
  configureDependencies(regular.name);
  runApp(Application());
}
