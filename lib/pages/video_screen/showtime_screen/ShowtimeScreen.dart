// Showtime
import 'package:flutter/material.dart';

class ShowtimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Showtime'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}