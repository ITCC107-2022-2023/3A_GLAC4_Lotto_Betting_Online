import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double appBarHeight;
  static late double safeAreaHeight;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late double statusBarHeight;
  static late double bottomPaddingHeight;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appBarHeight = AppBar().preferredSize.height;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    statusBarHeight = _mediaQueryData.padding.top;
    bottomPaddingHeight = _mediaQueryData.padding.bottom;
    safeAreaHeight =
        screenHeight - appBarHeight - statusBarHeight - bottomPaddingHeight;
  }
}
