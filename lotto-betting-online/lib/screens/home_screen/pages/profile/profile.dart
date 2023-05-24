import 'package:flutter/material.dart';
import 'package:lotto_betting_online/constants.dart';
import 'package:lotto_betting_online/size_config.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ProfileAvatar(avatarLetter: 'P'),
        ProfileInfoCapsule(
            onPressed: () {}, label: 'Name', data: 'Juana Dela Cruz'),
        ProfileInfoCapsule(
            onPressed: () {}, label: 'Username', data: 'userJuana01'),
        ProfileInfoCapsule(
            onPressed: () {}, label: 'Email', data: 'iamjuana@gmail.com'),
        ProfileInfoCapsule(
            onPressed: () {}, label: 'Mobile Number', data: '+63 9754555012'),
        SizedBox(
            height: 30,
            width: 150,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                style: ElevatedButton.styleFrom(
                    backgroundColor: kDangerColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'LOG OUT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
      ],
    )));
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    required this.avatarLetter,
    Key? key,
  }) : super(key: key);
  final String avatarLetter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(fit: StackFit.expand, clipBehavior: Clip.none, children: [
        CircleAvatar(
          child: Text(avatarLetter,
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              )),
          radius: 60,
        ),
        Positioned(
          bottom: 0,
          right: -8,
          child: SizedBox(
            height: 35,
            width: 35,
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 199, 199, 199),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
                child: const Center(
                  child: Icon(
                    MdiIcons.camera,
                    size: 24,
                    color: kColorDark1,
                  ),
                )),
          ),
        )
      ]),
    );
  }
}

class ProfileInfoCapsule extends StatelessWidget {
  final String label, data;
  final VoidCallback onPressed;
  const ProfileInfoCapsule({
    required this.onPressed,
    required this.label,
    required this.data,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      decoration: BoxDecoration(
          color: kLightBlue, borderRadius: BorderRadius.circular(15)),
      width: SizeConfig.screenWidth * .9,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                style: TextStyle(
                    color: kColorBtn1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: SizeConfig.screenWidth * .68,
                child: Text(
                  data,
                  maxLines: 3,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ],
          ),
          IconButton(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.zero,
              onPressed: onPressed,
              icon: const Icon(
                MdiIcons.pencil,
                color: Colors.black,
              )),

          // Icon(
          //   FluentIcons.edit_24_regular,
          //   color: kTextColor,
          // )
        ],
      ),
    );
  }
}
