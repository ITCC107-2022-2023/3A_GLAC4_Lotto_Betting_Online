import 'package:flutter/material.dart';

import 'package:lotto_betting_online/models/game_model.dart';

class GameButtons extends StatefulWidget {
  final bool isButtonDisable;
  final Function onPickNum;
  final GameData game;
  const GameButtons(
      {required this.isButtonDisable,
      required this.onPickNum,
      required this.game,
      super.key});

  @override
  State<GameButtons> createState() => _GameButtonsState();
}

class _GameButtonsState extends State<GameButtons> {
  @override
  Widget build(BuildContext context) {
    int numbersCount = widget.game.numbers.length;
    List<int> numbers = widget.game.numbers;
    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: numbersCount,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 40,
              childAspectRatio: 1 / 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10),
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () =>
                  widget.isButtonDisable ? null : widget.onPickNum(numbers[i]),
              child: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Text(numbers[i].toString()),
              ),
            );
          }),
    );
  }
}
