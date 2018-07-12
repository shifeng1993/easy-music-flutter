import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';

// 引入store
import './store/index.dart';
import './store/states/AppState.dart';

// 引入页面
import './pages/index.dart';

// 根组件
class App extends StatelessWidget {
  final store = createStore();
  // App();

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: createStore(),
      child: MaterialApp(
        theme: ThemeData(
          platform: TargetPlatform.iOS, // 使用ios的界面动画方式
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomeScreen(),
          '/find': (BuildContext context) => FindScreen(),
        },
      ),
    );
  }
}

// 输出渲染
void main() {
  runApp(App());
  // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}
