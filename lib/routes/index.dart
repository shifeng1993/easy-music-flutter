import 'package:flutter/material.dart';

// 引入页面
import '../pages/index.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData.dark(),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new HomeScreen(),
        '/My': (BuildContext context) => new MyScreen(),
        '/Cart': (BuildContext context) => new CartScreen(),
      },
    );
  }
}
