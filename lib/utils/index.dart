// Cart
import 'package:flutter/material.dart';

class PlatformAdaptiveAppBar extends AppBar {
  PlatformAdaptiveAppBar({
    Key key,
    TargetPlatform platform,
    List<Widget> actions,
    Widget title,
    Widget body,
    Widget bottom,
    Color backgroundColor,
    bool centerTitle,
    IconThemeData iconTheme,
    TextTheme textTheme
  })
      : super(
          key: key,
          elevation: platform == TargetPlatform.iOS ? 0.0 : 4.0,
          title: title,
          actions: actions,
          bottom: bottom,
          backgroundColor: backgroundColor,
          centerTitle: centerTitle ?? true,
          iconTheme: iconTheme,
          textTheme: textTheme
        );
}