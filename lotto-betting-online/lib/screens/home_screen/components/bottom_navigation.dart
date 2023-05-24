import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomNavigation extends StatefulWidget {
  final Function onPageChangeCallBack;
  const CustomNavigation({
    required this.onPageChangeCallBack,
    super.key,
  });

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (i) {
          widget.onPageChangeCallBack(i);
        },
        rippleColor: kColorBtn2,
        tabs: [
          GButton(
            icon: MdiIcons.homeOutline,
            text: 'Home',
          ),
          GButton(
            icon: MdiIcons.checkboxMultipleBlankCircleOutline,
            text: 'Play',
          ),
          GButton(
            icon: MdiIcons.listBoxOutline,
            text: 'Result',
          ),
          GButton(
            icon: MdiIcons.accountCircleOutline,
            text: 'Profile',
          ),
        ]);
  }
}
