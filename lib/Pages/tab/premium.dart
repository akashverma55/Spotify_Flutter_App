import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium Features'),
      ),
      body: Center(
        child: Text(
          'Upgrade to Premium for exclusive features!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}