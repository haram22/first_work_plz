import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/card_check.png'),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 800, left: 43),
                  child: nextButtonTrans(
                      buttonText: '',
                      navigator: navi(),
                      buttonColor: Colors.transparent,
                      heights: 46,
                      widths: 125,
                      radi: 50,
                      ispush: false)),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.only(top: 800, right: 43),
                  child: nextButtonTrans(
                      buttonText: '',
                      navigator: second(),
                      buttonColor: Colors.transparent,
                      heights: 46,
                      widths: 125,
                      radi: 50,
                      ispush: true)),
            ],
          ),
        ],
      ),
    );
  }
}

class complete extends StatefulWidget {
  const complete({super.key});

  @override
  State<complete> createState() => _completeState();
}

class _completeState extends State<complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/ready.png'),
          Padding(
              padding: EdgeInsets.only(top: 800, left: 43),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: navi(),
                  buttonColor: Colors.transparent,
                  heights: 43,
                  widths: 120,
                  radi: 50,
                  ispush: false)),
          Padding(
              padding: EdgeInsets.only(top: 800, left: 251),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: page131(),
                  buttonColor: Colors.transparent,
                  heights: 44,
                  widths: 120,
                  radi: 50,
                  ispush: true)),
        ],
      ),
    );
  }
}

class page131 extends StatefulWidget {
  const page131({super.key});

  @override
  State<page131> createState() => _page131State();
}

class _page131State extends State<page131> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/131.png'),
          Padding(
              padding: EdgeInsets.only(top: 800, left: 43),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: navi(),
                  buttonColor: Colors.transparent,
                  heights: 43,
                  widths: 120,
                  radi: 50,
                  ispush: false)),
          Padding(
              padding: EdgeInsets.only(top: 799, left: 251),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: page147(),
                  buttonColor: Colors.transparent,
                  heights: 44,
                  widths: 120,
                  radi: 50,
                  ispush: true)),
        ],
      ),
    );
  }
}

class page147 extends StatefulWidget {
  const page147({super.key});

  @override
  State<page147> createState() => _page147State();
}

class _page147State extends State<page147> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/147.png'),
          Padding(
              padding: EdgeInsets.only(top: 800, left: 43),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: navi(),
                  buttonColor: Colors.transparent,
                  heights: 43,
                  widths: 120,
                  radi: 50,
                  ispush: false)),
          Padding(
              padding: EdgeInsets.only(top: 799, left: 250),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: page146(),
                  buttonColor: Colors.transparent,
                  heights: 44,
                  widths: 122,
                  radi: 50,
                  ispush: true)),
        ],
      ),
    );
  }
}

class page146 extends StatefulWidget {
  const page146({super.key});

  @override
  State<page146> createState() => _page146State();
}

class _page146State extends State<page146> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/146.png'),
          Padding(
              padding: EdgeInsets.only(top: 800, left: 43),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: navi(),
                  buttonColor: Colors.transparent,
                  heights: 43,
                  widths: 120,
                  radi: 50,
                  ispush: false)),
          Padding(
              padding: EdgeInsets.only(top: 799, left: 251),
              child: nextButtonTrans(
                  buttonText: '',
                  navigator: iphone(),
                  buttonColor: Colors.transparent,
                  heights: 45,
                  widths: 121,
                  radi: 50,
                  ispush: true)),
        ],
      ),
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
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/onboarding2.png'),
          Center(
            child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0, top: 60),
                child: Center(
                    child: SizedBox(
                        height: 406,
                        child: Image.asset('assets/tutorial1.gif')))),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 800, left: 43),
                  child: nextButtonTrans(
                      buttonText: '',
                      navigator: navi(),
                      buttonColor: Colors.transparent,
                      heights: 43,
                      widths: 123,
                      radi: 50,
                      ispush: false)),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.only(top: 800, right: 43),
                  child: nextButtonTrans(
                      buttonText: '',
                      navigator: sec_3_t(),
                      buttonColor: Colors.transparent,
                      heights: 43,
                      widths: 123,
                      radi: 50,
                      ispush: true)),
            ],
          ),
        ],
      ),
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
      splash: 'assets/back_load.png',
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

class sec_3_t extends StatefulWidget {
  const sec_3_t({super.key});

  @override
  State<sec_3_t> createState() => _sec_3_tState();
}

class _sec_3_tState extends State<sec_3_t> {
  CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 58.0),
          child: CircularCountDownTimer(
            width: MediaQuery.of(context).size.width / 2.1,
            height: MediaQuery.of(context).size.height / 2,
            duration: 3,
            ringColor: Colors.transparent,
            fillColor: Colors.transparent,
            onStart: () {
              debugPrint('Countdown Started');
            },
            controller: _controller,
            backgroundColor: Colors.transparent,
            strokeWidth: 10.0,
            strokeCap: StrokeCap.round,
            isTimerTextShown: false,
            isReverse: true,
            autoStart: true,
            onComplete: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => page7_2(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c)),
              );
            },
          ),
        ),
        Image.asset('assets/back_load.png'),
        Center(
          child: Image.asset(
            'assets/load.gif',
            height: 80,
          ),
        )
      ]),
    );
  }
}

class page7_2 extends StatelessWidget {
  const page7_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/7_2.png'),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 800, left: 43),
                  child: nextButtonTrans(
                      buttonText: '',
                      navigator: second(),
                      buttonColor: Colors.transparent,
                      heights: 43,
                      widths: 123,
                      radi: 50,
                      ispush: true)),
              Spacer(),
              Padding(
                  padding: const EdgeInsets.only(top: 800, right: 44),
                  child: nextButtonTrans(
                      buttonText: '',
                      navigator: complete(),
                      buttonColor: Colors.transparent,
                      heights: 43,
                      widths: 123,
                      radi: 50,
                      ispush: true)),
            ],
          ),
        ],
      ),
    );
  }
}
