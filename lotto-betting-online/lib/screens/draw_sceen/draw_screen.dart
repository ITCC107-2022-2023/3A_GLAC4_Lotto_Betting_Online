import 'package:flutter/material.dart';
import 'package:lotto_betting_online/components/app_bar.dart';
import 'package:lotto_betting_online/models/game_model.dart';
import 'package:lotto_betting_online/size_config.dart';
import 'components/body.dart';

class DrawScreen extends StatelessWidget {
  static String routeName = "/draw";
  const DrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DrawScreenArg;
    SizeConfig().init(context);

    return Scaffold(
      appBar: MyAppBar(
          title: 'Draw',
          widget: SizedBox(
            height: 50,
            child: Image.asset(
              'assets/${args.gameData.image}',
            ),
          )),
      body: const Body(),
    );
  }
}

class DrawScreenArg {
  final GameData gameData;
  const DrawScreenArg({required this.gameData});
}
