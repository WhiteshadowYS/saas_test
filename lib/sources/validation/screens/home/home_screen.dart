import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validation Home'),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to the Validation Environment'),
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
