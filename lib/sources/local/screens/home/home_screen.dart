import 'package:flutter/material.dart';
import 'package:saas/application/router/app_router.dart';

import '../../config/config.dart';

class HomeScreen extends StatelessWidget {
  final SetEnvironmentCallback setEnvironmentCallback;
  HomeScreen({
    required this.setEnvironmentCallback,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$enviromentName Home'),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to the $enviromentName Environment'),
              ElevatedButton(
                onPressed: () => setEnvironmentCallback('default'),
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
