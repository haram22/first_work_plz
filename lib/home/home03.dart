import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../setting/setting1_8.dart';
import '../stretch/stretch1.dart';
import '../theme/color.dart';
import '../theme/text_style.dart';
import '../tutorial/profile.dart';
import 'buttonPress.dart';
import '../report/report.dart';
import 'video.dart';

bool is1 = false;
bool is2 = false;
bool is3 = false;
bool is4 = false;

class home3 extends StatefulWidget {
  const home3({super.key});

  @override
  State<home3> createState() => _home3State();
}

class _home3State extends State<home3> {
  late final int indexx;
  int _selectedIndex = 0;
  late List<bool> ispress;
  bool ispress1 = true;
  bool ispress2 = true;
  bool ispress3 = true;
  bool ispress4 = true;
  static const List<Widget> _widgetOptions = <Widget>[
    home22(),
    report(),
    stretch1(),
    setting1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.2),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey[400],
          elevation: 5,
          currentIndex: _selectedIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          iconSize: 28,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 3.0, top: 10),
                  child: ImageIcon(AssetImage('assets/un_home.png')),
                ),
                label: '홈'),
            const BottomNavigationBarItem(
                icon: SizedBox(
                  width: 30,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 3.0, top: 10),
                      child: ImageIcon(AssetImage('assets/un_report.png'))),
                ),
                label: '리포트'),
            const BottomNavigationBarItem(
                icon: SizedBox(
                  width: 40,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 3.0, top: 10),
                    child: ImageIcon(
                      AssetImage('assets/un_stretch.png'),
                    ),
                  ),
                ),
                label: '스트레칭'),
            const BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 3.0, top: 10),
                  child: ImageIcon(
                    AssetImage('assets/un_setting.png'),
                  ),
                ),
                label: '설정'),
          ],
          selectedItemColor: Main,
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      backgroundColor: Colors.white,
    );
  }
}

class home22 extends StatefulWidget {
  const home22({super.key});

  @override
  State<home22> createState() => _home22State();
}

class _home22State extends State<home22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 115,
        leading: Padding(
          padding: const EdgeInsets.only(left: 37.0),
          child: SvgPicture.asset('assets/logo.svg'),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: IconButton(
                icon: SvgPicture.asset('assets/notification.svg'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => noti(),
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c)),
                  );
                },
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 17, right: 17),
              child: Stack(
                children: [
                  Image.asset('assets/d_59.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 30),
                    child: Text(
                      "${user().input}님, 다음 측정일까지",
                      style: body1(color: Colors.white, size: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 18),
          Center(
            child: Text(
              "${user().input}님! 모든 미션들을 수행하셨군요! 대단해요!",
              style: subtitle1(size: 18, color: text),
            ),
          ),
          Stack(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20),
                  child: SizedBox(
                      height: 260,
                      child: Image.asset('assets/home1_circle.png')),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 150,
                      foregroundImage: AssetImage('assets/02.gif')),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home8()));
                      },
                      iconSize: 265,
                      icon: Image.asset('assets/home1_circle.png',
                          color: Colors.transparent)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 36.0),
                child: Text("주의가 필요한 자세 TOP3",
                    style: title2(size: 19, color: text)),
              ),
              SizedBox(width: 77),
              TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => more()));
                  },
                  child: Image.asset('assets/button_more.png', width: 78)),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 16),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => home_sit()));
                      },
                      icon: Image.asset('assets/top1.png'),
                      iconSize: 110),
                  Text("허리 구부려 앉기", style: body4(size: 12, color: text))
                ],
              ),
              SizedBox(width: 1),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => home_lie()));
                      },
                      icon: Image.asset('assets/top2.png'),
                      iconSize: 110),
                  Text("엎드려 자기", style: body4(size: 12, color: text))
                ],
              ),
              SizedBox(width: 1),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => home_stand()));
                      },
                      icon: Image.asset('assets/top3.png'),
                      iconSize: 110),
                  Text("짝다리 하고 서기", style: body4(size: 12, color: text))
                ],
              )
            ],
          ),
          Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 13, right: 10, bottom: 30),
                  child: Image.asset('assets/mission.png')),
              Padding(
                padding: const EdgeInsets.only(top: 68.0, left: 32),
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        is1 = !is1;
                      });
                    },
                    icon: is1
                        ? Image.asset('assets/is_true.png', width: 21)
                        : Image.asset('assets/is_un.png', width: 21)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 107.0, left: 32),
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        is2 = !is2;
                      });
                    },
                    icon: is2
                        ? Image.asset('assets/is_true.png', width: 21)
                        : Image.asset('assets/is_un.png', width: 21)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 146.0, left: 32),
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        is3 = !is3;
                      });
                    },
                    icon: is3
                        ? Image.asset('assets/is_true.png', width: 21)
                        : Image.asset('assets/is_un.png', width: 21)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 184.0, left: 32),
                child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        is4 = !is4;
                      });
                    },
                    icon: is4
                        ? Image.asset('assets/is_true.png', width: 21)
                        : Image.asset('assets/is_un.png', width: 21)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
