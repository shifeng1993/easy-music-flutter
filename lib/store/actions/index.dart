import 'package:flutter/material.dart'; // 引入是为了获取ThemeData类
import '../states/AppState.dart';
// 用户信息action
class SetUserInfoAction {
  Map<String, String> userInfo;
}

// 全局通知列表action
class SetNotificationAction {
  List<AppNotification> notification;
}

// 主题数据
class SetThemeDataAction {
  ThemeData themeData;
}

// 服务host
class SetServiceHostAction {
  Map<String, String> serviceHost;
}
