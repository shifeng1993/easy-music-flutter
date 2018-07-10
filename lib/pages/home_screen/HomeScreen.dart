// Home
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                '123',
                style: new TextStyle(
                  fontSize: 24.0,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('点击跳转到my'),
                      onPressed: () => Navigator.of(context).pushNamed('/My'),
                    ),
                    RaisedButton(
                      child: Text('点击跳转到Cart'),
                      onPressed: () => Navigator.of(context).pushNamed('/Cart'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
