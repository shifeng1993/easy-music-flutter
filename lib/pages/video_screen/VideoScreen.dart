// Video
import 'package:flutter/material.dart';
// 引入页面
import '../index.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen();

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 7, vsync: this);
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
          isScrollable: true,
          tabs: const <Tab>[
            const Tab(text: '推荐'),
            const Tab(text: '音乐'),
            const Tab(text: 'Showtime'),
            const Tab(text: 'MV'),
            const Tab(text: '二次元'),
            const Tab(text: '舞蹈'),
            const Tab(text: '游戏'),
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
        VideoSuggestScreen(),
        MusicScreen(),
        ShowtimeScreen(),
        MVScreen(),
        TwoDimensionsScreen(),
        DanceScreen(),
        GamesScreen(),
      ],
    );
  }
}
