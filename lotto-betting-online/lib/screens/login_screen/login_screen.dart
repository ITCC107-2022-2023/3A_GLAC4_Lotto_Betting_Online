import 'package:flutter/material.dart';
import 'package:lotto_betting_online/size_config.dart';
import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: const Body(),
    );
  }
}
