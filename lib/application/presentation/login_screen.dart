import 'package:flutter/material.dart';
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
            ElevatedButton(
              onPressed: () => setEnvironmentCallback('develop'),
              child: Text('Login to Development'),
            ),
            ElevatedButton(
              onPressed: () => setEnvironmentCallback('validation'),
              child: Text('Login to Validation'),
            ),
          ],
        ),
      ),
    );
  }
}
