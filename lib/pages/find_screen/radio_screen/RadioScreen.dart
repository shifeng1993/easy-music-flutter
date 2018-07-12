// Radio
import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Radio'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
