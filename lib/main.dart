import 'package:my_work_plz/home/buttonPress.dart';
import 'package:my_work_plz/home/home03.dart';
import 'package:my_work_plz/stretch/stretch1.dart';
import 'package:my_work_plz/tutorial/onboarding2.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:flutter/material.dart';
import 'home/home09.dart';
import 'stretch/stretch03.dart';
import 'stretch/stretch11_12.dart';
import 'stretch/stretch13.dart';
import 'tutorial/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'theme/color.dart';
import 'tutorial/login.dart';
import 'tutorial/pageView.dart';
import 'tutorial/profile.dart';
import 'tutorial/onboarding.dart';
import 'tutorial/time.dart';
import 'home/home.dart';
import 'video/video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splashIconSize: 200,
          nextScreen: profile(),
          backgroundColor: Main,
          splash: 'assets/splash_logo.png',
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
        ));
  }
}

//stretch1
class pageviewt extends StatefulWidget {
  const pageviewt({super.key});

  @override
  State<pageviewt> createState() => _pageviewtState();
}

class _pageviewtState extends State<pageviewt> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [home(), home3(), home9()],
    );
  }
}
