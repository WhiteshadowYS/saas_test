import 'package:flutter/material.dart';
import 'package:saas/application/application.dart';
import 'package:saas/application/config/config.dart';

void main() async {
  final config = Config();
  await config.init();
  runApp(Application(config));
}
