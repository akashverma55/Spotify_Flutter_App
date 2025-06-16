import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Create Page', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Text(
          'Welcome to the Create Page!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}