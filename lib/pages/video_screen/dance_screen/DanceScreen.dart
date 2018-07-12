// Dance
import 'package:flutter/material.dart';

class DanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dance'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
