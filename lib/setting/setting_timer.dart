import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../button/navigateButton.dart';
import '../home/gotosetting.dart';
import '../theme/color.dart';
import '../theme/text_style.dart';
import '../tutorial/time.dart';

class setting_first extends StatefulWidget {
  const setting_first({super.key});

  @override
  State<setting_first> createState() => _setting_firstState();
}

class _setting_firstState extends State<setting_first> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backNavi(
              navigator: homesetting(),
              colors: Main,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "중간자세 알림 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
          child: Image.asset('assets/position1.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => position_1(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 518.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked1,
            onToggle: (value) {
              setState(() {
                _isChecked1 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 192.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => position_2(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 211.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked2,
            onToggle: (value) {
              setState(() {
                _isChecked2 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 345.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => position_3(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 94.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked3,
            onToggle: (value) {
              setState(() {
                _isChecked3 = value;
              });
            },
          ),
        ),
      ]),
    );
  }
}

class position_1 extends StatefulWidget {
  const position_1({super.key});

  @override
  State<position_1> createState() => _position_1State();
}

class _position_1State extends State<position_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(left: 30.0), child: backArrow()),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "구부려 앉은 자세",
            style: title3(size: 23, color: Main),
          )),
      body: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 15, right: 15),
              child: Image.asset('assets/setting4.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0, left: 75),
              child: Min(),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 240, left: 175, right: 184),
              child: Divider(
                thickness: 1,
                color: Main,
              ),
            )),
            Center(
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 257, left: 240, right: 184),
                    child: Text(
                      "분",
                      style: subtitle5(size: 20, color: text),
                    ))),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 285.0, left: 175, right: 184),
              child: Divider(
                thickness: 1,
                color: Main,
              ),
            )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 188.0),
          child: nextButton(
              buttonText: "저장",
              navigator: time_first(),
              buttonColor: Main,
              ispush: true),
        )
      ]),
    );
  }
}

class position_2 extends StatefulWidget {
  const position_2({super.key});

  @override
  State<position_2> createState() => _position_2State();
}

class _position_2State extends State<position_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(left: 30.0), child: backArrow()),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "짝다리 하고 서는 자세",
            style: title3(size: 23, color: Main),
          )),
      body: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 15, right: 15),
              child: Image.asset('assets/setting4.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0, left: 75),
              child: Min(),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 240, left: 175, right: 184),
              child: Divider(
                thickness: 1,
                color: Main,
              ),
            )),
            Center(
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 257, left: 240, right: 184),
                    child: Text(
                      "분",
                      style: subtitle5(size: 20, color: text),
                    ))),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 285.0, left: 175, right: 184),
              child: Divider(
                thickness: 1,
                color: Main,
              ),
            )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 188.0),
          child: nextButton(
              buttonText: "저장",
              navigator: time_second(),
              buttonColor: Main,
              ispush: true),
        )
      ]),
    );
  }
}

class position_3 extends StatefulWidget {
  const position_3({super.key});

  @override
  State<position_3> createState() => _position_3State();
}

class _position_3State extends State<position_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: backArrow(),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "엎드려 자는 자세",
            style: title3(size: 23, color: Main),
          )),
      body: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 15, right: 15),
              child: Image.asset('assets/setting6.png'),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 130), child: RawP()),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 100, right: 100),
              child: Divider(
                thickness: 1,
                color: Main,
              ),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 300.0, left: 100, right: 100),
              child: Divider(
                thickness: 1,
                color: Main,
              ),
            )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 188.0),
          child: nextButton(
              buttonText: "저장",
              navigator: time_done(),
              buttonColor: Main,
              ispush: true),
        )
      ]),
    );
  }
}

class time_first extends StatefulWidget {
  const time_first({super.key});

  @override
  State<time_first> createState() => _time_firstState();
}

class _time_firstState extends State<time_first> {
  bool _isChecked1 = true;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backNavi(
              navigator: homesetting(),
              colors: Main,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            //${num().inputnum}
            "중간자세 알림 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
          child: Image.asset('assets/position2.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => position_1(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 518.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked1,
            onToggle: (value) {
              setState(() {
                _isChecked1 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 192.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => position_2(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 211.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked2,
            onToggle: (value) {
              setState(() {
                _isChecked2 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 345.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => position_3(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 94.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked3,
            onToggle: (value) {
              setState(() {
                _isChecked3 = value;
              });
            },
          ),
        ),
      ]),
    );
  }
}

class time_second extends StatefulWidget {
  const time_second({super.key});

  @override
  State<time_second> createState() => _time_secondState();
}

class _time_secondState extends State<time_second> {
  bool _isChecked1 = true;
  bool _isChecked2 = true;
  bool _isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backNavi(
              navigator: homesetting(),
              colors: Main,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            //${num().inputnum}
            "중간자세 알림 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
          child: Image.asset('assets/position2.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => position_1(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 518.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked1,
            onToggle: (value) {
              setState(() {
                _isChecked1 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 192.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => position_2(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 211.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked2,
            onToggle: (value) {
              setState(() {
                _isChecked2 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 345.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => position_3(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 94.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked3,
            onToggle: (value) {
              setState(() {
                _isChecked3 = value;
              });
            },
          ),
        ),
      ]),
    );
  }
}

class time_done extends StatefulWidget {
  const time_done({super.key});

  @override
  State<time_done> createState() => _time_doneState();
}

class _time_doneState extends State<time_done> {
  bool _isChecked1 = true;
  bool _isChecked2 = true;
  bool _isChecked3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backNavi(
              navigator: homesetting(),
              colors: Main,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            //${num().inputnum}
            "중간자세 알림 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
          child: Image.asset('assets/position3.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => position_1(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 518.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked1,
            onToggle: (value) {
              setState(() {
                _isChecked1 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 192.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => position_2(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 211.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked2,
            onToggle: (value) {
              setState(() {
                _isChecked2 = value;
              });
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 345.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => position_3(),
                    transitionDuration: Duration(seconds: 0),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 130,
                color: Colors.transparent,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 94.0, left: 257),
          child: FlutterSwitch(
            height: 28.0,
            width: 60.0,
            padding: 1.0,
            toggleSize: 28.0,
            borderRadius: 22.0,
            activeToggleColor: Main,
            activeColor: background,
            inactiveColor: background,
            toggleColor: Main,
            inactiveToggleColor: Gray2,
            value: _isChecked3,
            onToggle: (value) {
              setState(() {
                _isChecked3 = value;
              });
            },
          ),
        ),
      ]),
    );
  }
}
