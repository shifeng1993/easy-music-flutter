// Video
import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Video'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
