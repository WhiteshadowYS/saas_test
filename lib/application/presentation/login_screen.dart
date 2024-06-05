import 'package:flutter/material.dart';
import 'package:saas/application/config/environments.dart';
import 'package:saas/application/router/app_router.dart';

class LoginScreen extends StatelessWidget {
  final SetEnvironmentCallback setEnvironmentCallback;

  const LoginScreen({
    required this.setEnvironmentCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Select Environment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final env in environments)
              ElevatedButton(
                onPressed: () => setEnvironmentCallback(env),
                child: Text('Login to $env environment'),
              ),
          ],
        ),
      ),
    );
  }
}
