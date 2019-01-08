import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';

// 引入store
import './store/index.dart';
import './store/states/AppState.dart';

import './pages/SplashPage/splash_page.dart';

// 根组件
class App extends StatelessWidget {
  static final userinfo = {
    'name': 'superadmin',
    'org': '顶级机构'
  }; // redux内初始化假的用户数据
  final store = createStore(userinfo, new List<AppNotification>());

  App();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          // platform: TargetPlatform.iOS, // 使用ios的md 控件
          primaryColor: const Color(0xff2C3144), // 应用主要部分的背景颜色（工具栏，标签栏等）
          accentColor: const Color(0xffFFBC63), // 前景色：旋钮，文本，过度滚动边缘效果等
          highlightColor: const Color.fromRGBO(255, 255, 255, 0.3),
          splashColor: const Color.fromRGBO(255, 255, 255, 0.5),
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => SplashPage(),
        },
      ),
    );
  }
}

// 输出渲染
void main() {
  runApp(App());
  if (Platform.isAndroid) {
    // 设置android状态栏为透明的沉浸。
    // 写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
