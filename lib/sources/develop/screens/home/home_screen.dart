import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Development Home'),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to the Development Environment'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
