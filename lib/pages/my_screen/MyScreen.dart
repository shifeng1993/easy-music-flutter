// My
import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Text('点击跳转到find'),
                  onPressed: () => Navigator.of(context).pushNamed('/find'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
