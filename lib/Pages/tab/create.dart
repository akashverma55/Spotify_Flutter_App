import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Create Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}