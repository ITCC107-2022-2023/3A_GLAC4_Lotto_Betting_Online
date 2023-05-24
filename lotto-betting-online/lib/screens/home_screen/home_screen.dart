import 'package:flutter/material.dart';
import 'package:lotto_betting_online/screens/home_screen/pages/home/home.dart';
import 'package:lotto_betting_online/screens/home_screen/pages/play/play.dart';
import 'package:lotto_betting_online/screens/home_screen/pages/profile/profile.dart';
import 'package:lotto_betting_online/screens/home_screen/pages/result/result.dart';
import 'components/bottom_navigation.dart';
import 'package:lotto_betting_online/size_config.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activePageIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    PlayPage(),
    ResultPage(),
    ProfilePage()
  ];

  onPageChange(int i) {
    setState(() => activePageIndex = i);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      bottomNavigationBar: CustomNavigation(
        onPageChangeCallBack: onPageChange,
      ),
      // appBar: MyAppBar(title: 'Home'),
      body: screens[activePageIndex],
    );
  }
}
