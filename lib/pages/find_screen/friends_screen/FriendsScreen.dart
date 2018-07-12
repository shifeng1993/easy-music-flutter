// Friends
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Friends'),
      ),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
