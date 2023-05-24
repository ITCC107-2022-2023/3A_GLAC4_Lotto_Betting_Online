import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:lotto_betting_online/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomInput(
            label: 'DRAW',
          ),
          SizedBox(
            height: 8,
          ),
          CustomInput(
            label: 'RAMBOLITO',
          ),
          SizedBox(
            height: 45,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                  width: 300, child: Image.asset('assets/gcash-banner.jpg'))),
          SizedBox(
            height: 40,
          ),
          Text(
            'ENTER YOUR GCASH NUMBER',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: SizeConfig.screenWidth * .8,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset.zero,
                  color: Colors.black26,
                  spreadRadius: 0,
                  blurRadius: 7)
            ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kColorBtn2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    'SEND',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    ));
  }
}

class CustomInput extends StatelessWidget {
  final String label;
  const CustomInput({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset.zero,
                  color: Colors.black26,
                  spreadRadius: 0,
                  blurRadius: 7)
            ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
          )
        ],
      ),
    );
  }
}
