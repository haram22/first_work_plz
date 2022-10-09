import 'package:my_work_plz/main.dart';
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
        // Image.asset('assets/14_test.png'),
        Image.asset('assets/159.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 799, left: 45),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: navi(),
                    buttonColor: Colors.transparent,
                    heights: 48,
                    widths: 126,
                    radi: 50,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 799, right: 44),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: page16(),
                    buttonColor: Colors.transparent,
                    heights: 48,
                    widths: 126,
                    radi: 50,
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
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 90),
        Center(
          child: Text("${user().input}님이 가장 많이 취한",
              style: title1(color: text, size: 26)),
        ),
        SizedBox(height: 7),
        Center(
          child: Text("자세 TOP 1", style: title1(color: Main, size: 26)),
        ),
        SizedBox(height: 44),
        Image.asset('assets/top1_card.png', height: 555),
        SizedBox(height: 40),
        Stack(
          children: [
            Image.asset('assets/button.png', height: 47),
            nextButtonTrans(
                buttonText: '',
                navigator: navi(),
                buttonColor: Colors.transparent,
                heights: 45,
                widths: 124,
                radi: 50,
                ispush: false),
            Padding(
              padding: const EdgeInsets.only(left: 204.0),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: page17(),
                  buttonColor: Colors.transparent,
                  heights: 45,
                  widths: 124,
                  radi: 50,
                  ispush: true),
            )
          ],
        )
      ]),
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
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 90),
        Center(
          child: Text("${user().input}님이 가장 많이 취한",
              style: title1(color: text, size: 26)),
        ),
        SizedBox(height: 7),
        Center(
          child: Text("자세 TOP 2", style: title1(color: Main, size: 26)),
        ),
        SizedBox(height: 44),
        Image.asset('assets/top2_card.png', height: 555),
        SizedBox(height: 40),
        Stack(
          children: [
            Image.asset('assets/button.png', height: 47),
            nextButtonTrans(
                buttonText: '',
                navigator: navi(),
                buttonColor: Colors.transparent,
                heights: 45,
                widths: 124,
                radi: 50,
                ispush: false),
            Padding(
              padding: const EdgeInsets.only(left: 204.0),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: page18(),
                  buttonColor: Colors.transparent,
                  heights: 45,
                  widths: 124,
                  radi: 50,
                  ispush: true),
            )
          ],
        )
      ]),
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
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 90),
        Center(
          child: Text("${user().input}님이 가장 많이 취한",
              style: title1(color: text, size: 26)),
        ),
        SizedBox(height: 7),
        Center(
          child: Text("자세 TOP 3", style: title1(color: Main, size: 26)),
        ),
        SizedBox(height: 44),
        Image.asset('assets/top3_card.png', height: 555),
        SizedBox(height: 40),
        Stack(
          children: [
            Image.asset('assets/button.png', height: 47),
            nextButtonTrans(
                buttonText: '',
                navigator: navi(),
                buttonColor: Colors.transparent,
                heights: 45,
                widths: 124,
                radi: 50,
                ispush: false),
            Padding(
              padding: const EdgeInsets.only(left: 204.0),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: page19(),
                  buttonColor: Colors.transparent,
                  heights: 45,
                  widths: 124,
                  radi: 50,
                  ispush: true),
            )
          ],
        )
      ]),
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
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 90),
        Center(
          child: Text("${user().input}님의 통증 분석",
              style: title1(color: Main, size: 26)),
        ),
        SizedBox(height: 50),
        Center(
          child: Image.asset(
            'assets/162_image.png',
            height: 600,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Stack(
          children: [
            Image.asset('assets/button.png', height: 47),
            nextButtonTrans(
                buttonText: '',
                navigator: navi(),
                buttonColor: Colors.transparent,
                heights: 45,
                widths: 124,
                radi: 50,
                ispush: false),
            Padding(
              padding: const EdgeInsets.only(left: 204.0),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: watch1(),
                  buttonColor: Colors.transparent,
                  heights: 45,
                  widths: 124,
                  radi: 50,
                  ispush: true),
            )
          ],
        )
      ]),
    );
  }
}

class watch1 extends StatefulWidget {
  const watch1({super.key});

  @override
  State<watch1> createState() => _watch1State();
}

class _watch1State extends State<watch1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/watch1.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 44),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: navi(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 43),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: watch2(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class watch2 extends StatefulWidget {
  const watch2({super.key});

  @override
  State<watch2> createState() => _watch2State();
}

class _watch2State extends State<watch2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/watch2.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 787, left: 42),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: navi(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 785, right: 45),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: watch3(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class watch3 extends StatefulWidget {
  const watch3({super.key});

  @override
  State<watch3> createState() => _watch3State();
}

class _watch3State extends State<watch3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/watch3.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 787, left: 42),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: navi(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 785, right: 45),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: watch4(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class watch4 extends StatefulWidget {
  const watch4({super.key});

  @override
  State<watch4> createState() => _watch4State();
}

class _watch4State extends State<watch4> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/watch4.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 787, left: 42),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: navi(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 785, right: 45),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: tutorial_done(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class tutorial_done extends StatefulWidget {
  const tutorial_done({super.key});

  @override
  State<tutorial_done> createState() => _tutorial_doneState();
}

class _tutorial_doneState extends State<tutorial_done> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/tutorial_done.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 787, left: 42),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: navi(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: false)),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 785, right: 45),
                child: nextButtonTrans(
                    buttonText: '',
                    navigator: pageviewt(),
                    buttonColor: Colors.transparent,
                    heights: 45,
                    widths: 120,
                    radi: 50,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}
