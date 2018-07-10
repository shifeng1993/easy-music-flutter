// My
import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My'),
          leading: FlatButton(
            child: Text('返回'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Center(
          child: Text('My'),
        ),
      ),
    );
  }
}