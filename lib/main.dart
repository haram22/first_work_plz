import 'package:my_work_plz/home/home.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:flutter/material.dart';
import 'tutorial/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splashIconSize: 200,
          nextScreen: home(),
          backgroundColor: Main,
          splash: 'assets/splash_logo.png',
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
        ));
  }
}
