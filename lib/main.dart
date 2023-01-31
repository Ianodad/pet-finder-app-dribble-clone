import 'package:flutter/material.dart';

import 'package:pet_finder_app/Screens/Welcome/welcome_screen.dart';
import 'package:pet_finder_app/utils/color_constants.dart';
// export 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorConstant.primaryGreen,
        scaffoldBackgroundColor: ColorConstant.flashWhite,
        fontFamily: 'Montserrat',
      ),
      home: const WelcomeScreen(),
    );
  }
}
