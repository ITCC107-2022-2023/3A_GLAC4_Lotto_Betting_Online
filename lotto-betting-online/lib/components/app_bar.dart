import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? widget;
  const MyAppBar({
    required this.title,
    this.widget,
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: widget ??
            Text(
              title,
              style: TextStyle(color: kColorTextBody2),
            ));
  }
}
