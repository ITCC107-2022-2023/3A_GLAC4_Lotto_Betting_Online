import 'package:flutter/material.dart';
import 'package:lotto_betting_online/screens/draw_sceen/draw_screen.dart';
import 'package:lotto_betting_online/screens/home_screen/home_screen.dart';
import 'package:lotto_betting_online/screens/login_screen/login_screen.dart';
import 'package:lotto_betting_online/screens/play_screen/play_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  PlayScreen.routeName: (context) => PlayScreen(),
  DrawScreen.routeName: (context) => DrawScreen()
};
