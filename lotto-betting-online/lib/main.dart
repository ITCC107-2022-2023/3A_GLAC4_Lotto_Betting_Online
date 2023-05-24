import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes.dart';
import 'theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  Widget app = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lotto Betting Online',
      theme: theme(),
      routes: routes,
      initialRoute: '/login');
  runApp(app);
}
