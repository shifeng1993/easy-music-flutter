// Cart
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          leading: FlatButton(
            child: Text('返回'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Center(
          child: Text('Cart'),
        ),
      ),
    );
  }
}
