import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:lotto_betting_online/data/game_list.dart';
import 'package:lotto_betting_online/screens/play_screen/play_screen.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/pcso_logo.png',
          scale: 15,
        ),
        SizedBox(
          height: 15,
        ),
        const Text(
          'CHOOSE YOUR LUCKY GAME',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: gameList.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 1 / 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0),
              itemBuilder: (context, i) {
                return Container(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset('assets/${gameList[i].image}')),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, '/play',
                            arguments: PlayScreenArg(gameData: gameList[i])),
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            backgroundColor: kBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        child: Text(
                          gameList[i].gameText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kColorDark1, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    )));
  }
}
