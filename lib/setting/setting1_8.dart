import 'package:flutter/material.dart';
import 'package:my_work_plz/button/navigateButton.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../home/gotosetting.dart';
import '../home/home09.dart';
import '../theme/color.dart';
import '../tutorial/profile.dart';
import '../tutorial/time.dart';
import 'setting10_15.dart';

class setting1 extends StatefulWidget {
  const setting1({super.key});

  @override
  State<setting1> createState() => _setting1State();
}

class _setting1State extends State<setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
            toolbarHeight: 60,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "설정",
              style: title3(size: 26, color: Main),
            )),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 33.0, left: 10, right: 10),
                  child: Image.asset(
                    'assets/setting_profile.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 97.0, left: 221),
                  child: Text(
                    '${user().input}',
                    style: title3(size: 23, color: Main),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 44.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => setting13()));
                      },
                      child: Container(
                        width: 350,
                        height: 190,
                        color: Colors.transparent,
                      ),
                    )),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                  child: Image.asset('assets/setting1_last.png'),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting2(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 64.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting10(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 119.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting14(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 169.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting15(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}

class setting2 extends StatefulWidget {
  const setting2({super.key});

  @override
  State<setting2> createState() => _setting2State();
}

class _setting2State extends State<setting2> {
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
              navigator: home9(),
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
          child: Image.asset('assets/setting2_before.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting3()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting3()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting15()));
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

class setting3 extends StatefulWidget {
  const setting3({super.key});

  @override
  State<setting3> createState() => _setting3State();
}

class _setting3State extends State<setting3> {
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
              navigator: setting5(),
              buttonColor: Main,
              ispush: true),
        )
      ]),
    );
  }
}

class setting5 extends StatefulWidget {
  const setting5({super.key});

  @override
  State<setting5> createState() => _setting5State();
}

class _setting5State extends State<setting5> {
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
              navigator: home9(),
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
          child: Image.asset('assets/setting2.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting3()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting15()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting6()));
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

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class setting6 extends StatefulWidget {
  const setting6({super.key});

  @override
  State<setting6> createState() => _setting6State();
}

class _setting6State extends State<setting6> {
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
              navigator: setting8(),
              buttonColor: Main,
              ispush: true),
        )
      ]),
    );
  }
}

class setting8 extends StatefulWidget {
  const setting8({super.key});

  @override
  State<setting8> createState() => _setting8State();
}

class _setting8State extends State<setting8> {
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
            //${num().inputnum}
            "중간자세 알림 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
          child: Image.asset('assets/setting2_last.png'),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 28),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting3()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting15()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting6()));
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
