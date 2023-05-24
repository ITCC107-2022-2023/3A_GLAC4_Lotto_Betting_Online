import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

///This is the overall theme.

ThemeData theme() {
  return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: kColorPrimary,
          onPrimary: kColorPrimary,
          secondary: kColorSecondary,
          onSecondary: kColorSecondary,
          error: kDangerColor,
          onError: kDangerColor,
          background: kColorSecondary,
          onBackground: kColorSecondary,
          surface: kColorSecondary,
          onSurface: kColorSecondary),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: kColorPrimary,
          elevation: 0,
          iconTheme: IconThemeData(color: kColorDark1)),
      textTheme: const TextTheme(),
      scaffoldBackgroundColor: kColorSecondary);
}



// AppBar mainAppBar() {
//   return AppBar(
//     // key: appBarKey,
//     iconTheme: const IconThemeData(color: kColorPrimary),
//     backgroundColor: Colors.white,
//     elevation: 0,
//     centerTitle: true,
//     leadingWidth: 100,
//     actions: [
//       GestureDetector(
//           onTap: () => Navigator.pushNamed(context, "/inbox"),
//           child: const Icon(FluentIcons.mail_24_regular)),
//       const SizedBox(
//         width: 20,
//       ),
//       GestureDetector(
//           onTap: () {
//             _scaffoldKey.currentState?.openEndDrawer();
//           },
//           child: const Icon(FluentIcons.navigation_24_regular)),
//       const SizedBox(
//         width: 12,
//       )
//     ],
//     // leading: Builder(builder: (context) {
//     //   return SwitchDutyMode(
//     //     isActiveCallBack: isActiveCallback,
//     //     isActive: isActive,
//     //   );
//     // }),
//     title: SizedBox(
//       height: 70,
//       child: Image.asset('assets/images/yallamovers_text_logo.png'),
//     ),
//   );
// }
