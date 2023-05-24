import 'package:flutter/material.dart';
import 'package:lotto_betting_online/screens/login_screen/components/myform.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 100,
              child: Image.asset('assets/pcso_logo.png'),
            ),
            Text(
              'LOTTO BETTING ONLINE',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            MyForm(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
