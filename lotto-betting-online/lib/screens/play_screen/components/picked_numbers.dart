import 'package:flutter/material.dart';
import 'package:lotto_betting_online/models/game_model.dart';

class PickedNumbers extends StatelessWidget {
  final List<int> pickedNumbers;
  final GameData game;
  const PickedNumbers(
      {required this.game, required this.pickedNumbers, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Picked numbers:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(pickedNumbers.length, (index) {
                return CircleAvatar(
                  child: Text(pickedNumbers[index].toString()),
                );
              })),
        )
      ],
    );
  }
}
