import 'package:my_work_plz/tutorial/profile.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:my_work_plz/tutorial/onboarding2.dart';
import 'package:my_work_plz/button/navigateButton.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/16.png'),
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
                  navigator: page22(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page14 extends StatefulWidget {
  const page14({super.key});

  @override
  State<page14> createState() => _page14State();
}

class _page14State extends State<page14> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/14_test.png'),
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
                    navigator: page16(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page16 extends StatefulWidget {
  const page16({super.key});

  @override
  State<page16> createState() => _page16State();
}

class _page16State extends State<page16> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/16.png'),
        Padding(
          padding: const EdgeInsets.only(bottom: 710),
          child: Center(
            child: Card(
              elevation: 0,
              child: Text("${user().input}님이 가장 많이 취한",
                  style: title1(color: text, size: 26)),
            ),
          ),
        ),
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
                    navigator: page17(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page17 extends StatefulWidget {
  const page17({super.key});

  @override
  State<page17> createState() => _page17State();
}

class _page17State extends State<page17> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/17.png'),
        Padding(
          padding: const EdgeInsets.only(bottom: 710),
          child: Center(
            child: Card(
              elevation: 0,
              child: Text("${user().input}님이 가장 많이 취한",
                  style: title1(color: text, size: 26)),
            ),
          ),
        ),
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
                    navigator: page18(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page18 extends StatefulWidget {
  const page18({super.key});

  @override
  State<page18> createState() => _page18State();
}

class _page18State extends State<page18> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/18.png'),
        Padding(
          padding: const EdgeInsets.only(bottom: 710),
          child: Center(
            child: Card(
              elevation: 0,
              child: Text("${user().input}님이 가장 많이 취한",
                  style: title1(color: text, size: 26)),
            ),
          ),
        ),
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
                    navigator: page19(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page19 extends StatefulWidget {
  const page19({super.key});

  @override
  State<page19> createState() => _page19State();
}

class _page19State extends State<page19> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/19.png'),
        Padding(
          padding: const EdgeInsets.only(bottom: 710),
          child: Center(
            child: Card(
              elevation: 0,
              child: Text("${user().input}님의 전체 결과",
                  style: title1(color: Main, size: 26)),
            ),
          ),
        ),
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
                    navigator: page20(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page20 extends StatefulWidget {
  const page20({super.key});

  @override
  State<page20> createState() => _page20State();
}

class _page20State extends State<page20> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/20.png'),
        Padding(
          padding: const EdgeInsets.only(bottom: 710),
          child: Center(
            child: Card(
              elevation: 0,
              child: Text("${user().input}님의 통증 분석",
                  style: title1(color: Main, size: 26)),
            ),
          ),
        ),
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
                    navigator: page21(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}
