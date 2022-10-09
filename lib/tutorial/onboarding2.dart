import 'package:my_work_plz/tutorial/profile.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_work_plz/button/navigateButton.dart';
import 'package:my_work_plz/tutorial/pageView.dart';
import '../main.dart';

class iphone extends StatefulWidget {
  const iphone({super.key});

  @override
  State<iphone> createState() => _iphoneState();
}

class _iphoneState extends State<iphone> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/iphone_screen.png'),
      Padding(
        padding: const EdgeInsets.only(left: 32, right: 32.0, top: 270),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Color(0xff595959),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => page13(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c)),
              );
            },
            leading: Image.asset('assets/card_logo.png', height: 38.55),
            title: Text("${user().input}님의 자세분석이 끝났습니다. 결과를 확인하세요!",
                style: subtitle3(color: white, size: 12)),
          ),
        ),
      ),
    ]);
  }
}

class page13 extends StatefulWidget {
  const page13({super.key});

  @override
  State<page13> createState() => _page13State();
}

class _page13State extends State<page13> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/157.png'),
        Padding(
            padding: const EdgeInsets.only(top: 799, left: 146),
            child: nextButtonTrans(
                buttonText: '',
                navigator: page14(),
                buttonColor: Colors.transparent,
                heights: 45,
                widths: 123,
                radi: 50,
                ispush: true)),
      ],
    );
  }
}

class slideto21 extends StatefulWidget {
  const slideto21({super.key});

  @override
  State<slideto21> createState() => _slideto21State();
}

class _slideto21State extends State<slideto21> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [IntroScreen(), page21()],
    );
  }
}

class page21 extends StatefulWidget {
  const page21({super.key});

  @override
  State<page21> createState() => _page21State();
}

class _page21State extends State<page21> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/21.svg'),
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
                    navigator: page22(),
                    buttonColor: Main,
                    ispush: true)),
          ],
        ),
      ],
    );
  }
}

class page22 extends StatefulWidget {
  const page22({super.key});

  @override
  State<page22> createState() => _page22State();
}

class _page22State extends State<page22> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/22.svg'),
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
                  navigator: page23(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page23 extends StatefulWidget {
  const page23({super.key});

  @override
  State<page23> createState() => _page23State();
}

class _page23State extends State<page23> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/23.svg'),
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
                  navigator: page24(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page24 extends StatefulWidget {
  const page24({super.key});

  @override
  State<page24> createState() => _page24State();
}

class _page24State extends State<page24> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/tutorial02.png'),
        Padding(
          padding: const EdgeInsets.only(top: 360, left: 80),
          child: Image.asset('assets/tutorial2.gif', height: 236),
        ),
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
                  navigator: page25(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page25 extends StatefulWidget {
  const page25({super.key});

  @override
  State<page25> createState() => _page25State();
}

class _page25State extends State<page25> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/25.png'),
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
                  navigator: page26(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page26 extends StatefulWidget {
  const page26({super.key});

  @override
  State<page26> createState() => _page26State();
}

class _page26State extends State<page26> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/26.svg'),
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
                  navigator: page27(),
                  buttonColor: Main,
                  ispush: true,
                )),
          ],
        ),
      ],
    );
  }
}

class page27 extends StatefulWidget {
  const page27({super.key});

  @override
  State<page27> createState() => _page27State();
}

class _page27State extends State<page27> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: SizedBox(
                    width: 0,
                    height: 1120,
                    child: IconButton(
                        alignment: Alignment.topCenter,
                        iconSize: 2000,
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => page28()),
                          );
                        },
                        icon: Image.asset('assets/27.png'))),
              ),
            ],
          ),
          Container(height: 44, color: Color.fromRGBO(61, 61, 61, 1.0016)),
          Padding(
              padding: const EdgeInsets.only(top: 802.0),
              child: SvgPicture.asset('assets/27_bottom.svg'))
        ],
      ),
    );
  }
}

class page28 extends StatefulWidget {
  const page28({super.key});

  @override
  State<page28> createState() => _page28State();
}

class _page28State extends State<page28> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/28.svg'),
        SizedBox(
            height: 900,
            width: 500,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page29()));
                },
                child: Text("")))
      ],
    );
  }
}

class page29 extends StatefulWidget {
  const page29({super.key});

  @override
  State<page29> createState() => _page29State();
}

class _page29State extends State<page29> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/29.svg'),
        SizedBox(
            height: 900,
            width: 500,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page30()));
                },
                child: Text("")))
      ],
    );
  }
}

class page30 extends StatefulWidget {
  const page30({super.key});

  @override
  State<page30> createState() => _page30State();
}

class _page30State extends State<page30> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/30.svg'),
        SizedBox(
            height: 900,
            width: 500,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page31()));
                },
                child: Text("")))
      ],
    );
  }
}

class page31 extends StatefulWidget {
  const page31({super.key});

  @override
  State<page31> createState() => _page31State();
}

class _page31State extends State<page31> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/32.svg'),
        SizedBox(
            height: 900,
            width: 500,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => pageviewt(),
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c)),
                  );
                },
                child: Text("")))
      ],
    );
  }
}
