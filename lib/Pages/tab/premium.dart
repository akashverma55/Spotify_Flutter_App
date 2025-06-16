import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Premium Features',style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Text(
          'Upgrade to Premium for exclusive features!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}