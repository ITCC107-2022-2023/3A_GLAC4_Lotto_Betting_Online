import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:lotto_betting_online/data/game_list.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  List<int> generateRandomResult(int count, List<int> numbers) {
    Random random = Random();
    List<int> generatedNumbers = [];

    for (int i = 0; i < count; i++) {
      int num = random.nextInt(count + 1);

      if (!generatedNumbers.contains(numbers[num])) {
        generatedNumbers.add(numbers[num]);
      } else {
        count + 1;
      }
    }

    return generatedNumbers;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  offset: Offset(2, 2),
                  color: Colors.black12,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 1)
            ], color: kLightBlue, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Image.asset(
                        'assets/pcso_logo.png',
                        scale: 1.3,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'LOTTO DRAW RESULT',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: gameList.length,
                itemBuilder: (context, i) {
                  Random rand = Random();

                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70,
                          child: Image.asset('assets/${gameList[i].image}'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:
                                  List.generate(gameList[i].setCount, (index) {
                                return CircleAvatar(
                                  child: Text(
                                      '${gameList[i].numbers[rand.nextInt(gameList[i].numbers.length)]}'),
                                );
                              })),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    )));
  }
}
