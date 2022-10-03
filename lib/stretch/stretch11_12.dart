import 'package:flutter/material.dart';
import 'package:my_work_plz/stretch/stretch01.dart';
import '../button/navigateButton.dart';
import '../theme/color.dart';
import '../theme/text_style.dart';
import 'stretch13.dart';

class stretch11 extends StatefulWidget {
  const stretch11({super.key});

  @override
  State<stretch11> createState() => _stretch11State();
}

class _stretch11State extends State<stretch11> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/stretching11.png'),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 800, left: 49),
                child: nextButton(
                  buttonText: '다시하기',
                  navigator: navi(),
                  buttonColor: Gray1,
                  ispush: false,
                )),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 800, right: 49),
                child: nextButton(
                  buttonText: '완료',
                  navigator: stretching12(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class stretching12 extends StatefulWidget {
  const stretching12({super.key});

  @override
  State<stretching12> createState() => _stretching12State();
}

class _stretching12State extends State<stretching12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: IconButton(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.arrow_back_ios, color: text),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => stretch13home(),
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
                  })),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "굽은 등 교정 스트레칭",
            style: text3(size: 23, color: Main),
          )),
      body: ListView(children: [
        Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "5단계 / 소요시간 7분",
                  style: button1(size: 20, color: text),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 146, right: 146, top: 19, bottom: 17),
          child: nextButton(
              buttonText: '시작하기',
              navigator: stret01(),
              buttonColor: Main,
              ispush: true),
        ),
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {},
            icon: Stack(
              children: [
                Image.asset('assets/check1.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 13),
                  child: Image.asset('assets/stretching01.gif', width: 130),
                ),
              ],
            )),
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {},
            icon: Stack(
              children: [
                Image.asset('assets/check2.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15),
                  child: Image.asset('assets/stretching02.gif', width: 120),
                ),
              ],
            )),
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {},
            icon: Stack(
              children: [
                Image.asset('assets/check3.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 17),
                  child: Image.asset('assets/stretching03.gif', width: 120),
                ),
              ],
            )),
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {},
            icon: Stack(
              children: [
                Image.asset('assets/check4.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 17),
                  child: Image.asset('assets/stretching04.gif', width: 110),
                ),
              ],
            )),
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {},
            icon: Stack(
              children: [
                Image.asset('assets/check5.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 13),
                  child: Image.asset('assets/stretching05.gif', width: 130),
                ),
              ],
            )),
      ]),
    );
  }
}
