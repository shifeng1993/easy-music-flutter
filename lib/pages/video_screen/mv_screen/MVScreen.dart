// MV
import 'package:flutter/material.dart';

class MVScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MV'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
