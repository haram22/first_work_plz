import 'package:my_work_plz/tutorial/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:my_work_plz/button/navigateButton.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:my_work_plz/tutorial/onboarding2.dart';

class checkProduct extends StatefulWidget {
  const checkProduct({super.key});

  @override
  State<checkProduct> createState() => _checkProductState();
}

class _checkProductState extends State<checkProduct> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/card_check.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                    buttonText: '뒤로가기',
                    navigator: navi(),
                    buttonColor: Gray1,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                    buttonText: '확인',
                    navigator: second(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class second extends StatefulWidget {
  second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/onboarding2.svg'),
        Center(
          child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0, top: 60),
              child: Center(
                  child: SizedBox(
                      height: 546,
                      child: Image.asset('assets/tutorial1.gif')))),
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                    buttonText: '뒤로가기',
                    navigator: navi(),
                    buttonColor: Gray1,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                  buttonText: '확인',
                  navigator: sec_3(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class sec_3 extends StatefulWidget {
  const sec_3({super.key});

  @override
  State<sec_3> createState() => _sec_3State();
}

class _sec_3State extends State<sec_3> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splashIconSize: 896,
      nextScreen: page7_2(),
      backgroundColor: Colors.white,
      splash: 'assets/7_1.png',
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

class page7_2 extends StatelessWidget {
  const page7_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/7_2.svg'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                  buttonText: '뒤로가기',
                  navigator: navi(),
                  buttonColor: Gray1,
                  ispush: false,
                )),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                  buttonText: '확인',
                  navigator: page8(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page8 extends StatelessWidget {
  const page8({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/8.svg'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                  buttonText: '뒤로가기',
                  navigator: navi(),
                  buttonColor: Gray1,
                  ispush: false,
                )),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                    buttonText: '확인',
                    navigator: page9(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page9 extends StatelessWidget {
  const page9({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/9.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                    buttonText: '뒤로가기',
                    navigator: navi(),
                    buttonColor: Gray1,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                    buttonText: '확인',
                    navigator: page10(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page10 extends StatelessWidget {
  const page10({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/10.png'),
        Center(
          child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: RawPickerTest()),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0, left: 100, right: 100),
          child: Divider(
            thickness: 1,
            color: Main,
          ),
        )),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 100, right: 100),
          child: Divider(
            thickness: 1,
            color: Main,
          ),
        )),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                  buttonText: '뒤로가기',
                  navigator: navi(),
                  buttonColor: Gray1,
                  ispush: false,
                )),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                  buttonText: '확인',
                  navigator: page11(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page11 extends StatelessWidget {
  const page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/11.svg'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                  buttonText: '뒤로가기',
                  navigator: navi(),
                  buttonColor: Gray1,
                  ispush: false,
                )),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                    buttonText: '완료',
                    navigator: iphone(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}
