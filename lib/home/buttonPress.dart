import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../button/navigateButton.dart';
import '../theme/color.dart';
import '../tutorial/profile.dart';

class more extends StatefulWidget {
  const more({super.key});

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 38,
            elevation: 0,
            leading: Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 13),
                child: backArrow()),
            backgroundColor: Colors.white),
        body: Stack(
          children: [
            Center(
                child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 5.0, left: 40, right: 40),
                    child: Image.asset('assets/home3.png'))),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 760.0),
              child: Text("${user().input}님의 전체 결과",
                  style: title(size: 26, color: Main)),
            ))
          ],
        ));
  }
}

class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
                padding: const EdgeInsets.only(left: 18.0), child: backArrow()),
            title: Text("알림함", style: title1(color: Main, size: 26))),
        body: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 88.0),
                child: SvgPicture.asset('assets/noti.svg', fit: BoxFit.none)),
          ],
        ));
  }
}

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.only(left: 18.0), child: backArrow())),
      body: ListView(
        children: [
          Stack(children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Image.asset('assets/home2.png'))
          ])
        ],
      ),
    );
  }
}

class home8 extends StatefulWidget {
  const home8({super.key});

  @override
  State<home8> createState() => _home8State();
}

class _home8State extends State<home8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.only(left: 18.0), child: backArrow())),
      body: ListView(
        children: [
          Stack(children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Image.asset('assets/home8.png')),
          ])
        ],
      ),
    );
  }
}
