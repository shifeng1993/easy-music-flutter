// Friends
import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Friends'),
    );
  }

  void goback(context) {
    Navigator.pop(context);
  }
}
