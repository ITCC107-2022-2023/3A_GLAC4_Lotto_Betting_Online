import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';

class ScheduleContainer extends StatelessWidget {
  final List<Widget> contents;
  final String time, day;
  const ScheduleContainer({
    required this.contents,
    required this.time,
    required this.day,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 140,
        padding: EdgeInsets.only(top: 50, bottom: 5, left: 5, right: 5),
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              offset: Offset(2, 2),
              color: Colors.black12,
              blurStyle: BlurStyle.normal,
              spreadRadius: 1)
        ], color: kLightBlue, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: contents,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            color: kBlue, borderRadius: BorderRadius.circular(25)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            'DRAWS AT $time',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Text(
            day,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ))
        ]),
      ),
    ]);
  }
}
