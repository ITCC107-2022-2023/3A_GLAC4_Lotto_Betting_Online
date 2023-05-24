import 'package:flutter/material.dart';
import 'package:lotto_betting_online/components/app_bar.dart';
import 'package:lotto_betting_online/models/game_model.dart';
import 'package:lotto_betting_online/size_config.dart';
import 'components/body.dart';

class PlayScreen extends StatelessWidget {
  static String routeName = "/play";
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PlayScreenArg;
    SizeConfig().init(context);

    return Scaffold(
      appBar: MyAppBar(
        title: 'Play',
        widget: SizedBox(
          height: 50,
          child: Image.asset(
            'assets/${args.gameData.image}',
          ),
        ),
      ),
      body: Body(game: args.gameData),
    );
  }
}

class PlayScreenArg {
  final GameData gameData;
  const PlayScreenArg({required this.gameData});
}
