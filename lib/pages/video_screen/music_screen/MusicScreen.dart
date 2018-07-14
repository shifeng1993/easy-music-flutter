// Music
import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Music'),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
