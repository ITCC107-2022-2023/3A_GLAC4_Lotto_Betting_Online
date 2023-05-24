import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';

class MyForm extends StatefulWidget {
  const MyForm({
    super.key,
  });

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool isHide = true;

  showHidePass() {
    setState(() {
      isHide = !isHide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(
          label: 'Username',
          icon: MdiIcons.account,
        ),
        SizedBox(
          height: 20,
        ),
        MyTextField(
          label: 'Password',
          icon: MdiIcons.lock,
          hideText: isHide,
          inputType: TextInputType.visiblePassword,
          suffixIcon: GestureDetector(
              onTap: showHidePass,
              child: isHide ? Icon(MdiIcons.eyeOff) : Icon(MdiIcons.eye)),
        ),
        Align(
            alignment: Alignment.centerRight, child: Text('Forgot Password?')),
        SizedBox(
          height: 40,
        ),
        SizedBox(
            height: 45,
            width: 150,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false),
                style: ElevatedButton.styleFrom(
                    backgroundColor: kColorBtn2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
        SizedBox(
          height: 40,
        ),
        Text('Or login with:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton.mini(
              buttonType: ButtonType.facebook,
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false),
            ),
            SignInButton.mini(
              buttonType: ButtonType.google,
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false),
            ),
          ],
        ),
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  final String label;
  final bool? hideText;
  final IconData icon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  const MyTextField({
    required this.label,
    required this.icon,
    this.hideText,
    this.inputType,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      child: TextField(
        obscureText: hideText ?? false,
        keyboardType: inputType,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            label: Text(
              label,
              style: TextStyle(color: Colors.black),
            ),
            prefixIcon: Icon(
              icon,
              color: kColorDark1,
            ),
            suffixIcon: suffixIcon),
      ),
    );
  }
}
