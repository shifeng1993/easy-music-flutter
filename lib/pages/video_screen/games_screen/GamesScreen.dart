// Games
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Games'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
