// find
import 'package:flutter/material.dart';
// 引入页面
import '../index.dart';

class FindScreen extends StatefulWidget {
  const FindScreen();

  @override
  _FindScreenState createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen>
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
      appBar: _tabbar(context),
      body: _body(context),
    );
  }

  Widget _tabbar(BuildContext context) {
    return AppBar(
      title: Container(
        child: TabBar(
          controller: _tabController,
          isScrollable: false,
          tabs: const <Tab>[
            const Tab(text: '推荐'),
            const Tab(text: '朋友'),
            const Tab(text: '电台'),
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
        FindSuggestScreen(),
        FriendsScreen(),
        RadioScreen(),
      ],
    );
  }
}
