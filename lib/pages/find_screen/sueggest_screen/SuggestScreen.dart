// Suggest
import 'package:flutter/material.dart';

class SuggestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Suggest'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
