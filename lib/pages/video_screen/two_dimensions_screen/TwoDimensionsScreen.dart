// TwoDimensions
import 'package:flutter/material.dart';

class TwoDimensionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TwoDimensions'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
