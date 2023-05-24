import 'package:flutter/material.dart';

class DayDrawSched extends StatelessWidget {
  final String drawLabel;
  final String drawTime;
  const DayDrawSched({
    required this.drawLabel,
    required this.drawTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          drawLabel,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          drawTime,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}
