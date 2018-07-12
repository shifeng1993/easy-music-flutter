// Home
import 'package:flutter/material.dart';
// 引入页面
import '../index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: _body(context),
    );
  }

  Widget _appbar(BuildContext context) {
    return AppBar(
      title: Container(
        child: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          tabs: const <Tab>[
            const Tab(text: '我的'),
            const Tab(text: '发现'),
            const Tab(text: '视频'),
          ],
        ),
      ),
      centerTitle: true, // 消除 android 与 ios 页面title布局差异
      elevation: 0.0, // 去掉appbar下面的阴影
    );
  }

  Widget _body(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        MyScreen(),
        FindScreen(),
        VideoScreen(),
      ],
    );
  }
}
