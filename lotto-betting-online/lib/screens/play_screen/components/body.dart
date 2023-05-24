import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:lotto_betting_online/models/game_model.dart';
import 'package:lotto_betting_online/screens/draw_sceen/draw_screen.dart';
import 'package:lotto_betting_online/screens/play_screen/components/gamebuttons.dart';
import 'package:lotto_betting_online/screens/play_screen/components/picked_numbers.dart';
import 'package:lotto_betting_online/size_config.dart';

class Body extends StatefulWidget {
  final GameData game;
  const Body({required this.game, super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isDisable = false;

  List<int> pickedNumbers = [];

  @override
  Widget build(BuildContext context) {
    void onPickNum(num) {
      if (pickedNumbers.length < widget.game.setCount) {
        if (!pickedNumbers.contains(num)) {
          setState(() {
            pickedNumbers.add(num);
          });
        } else {}
      } else {
        setState(() {
          isDisable = true;
        });
      }
    }

    return SafeArea(
        child: Center(
      child: Column(
        children: [
          Text(
            'CHOOSE YOUR LUCKY NUMBER',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          GameButtons(
            game: widget.game,
            onPickNum: onPickNum,
            isButtonDisable: false,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:
                PickedNumbers(game: widget.game, pickedNumbers: pickedNumbers),
          ),
          SizedBox(
            height: 2,
          ),
          SizedBox(
              width: SizeConfig.screenWidth * .8,
              child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/draw',
                      arguments: DrawScreenArg(gameData: widget.game)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ))),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
