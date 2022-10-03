import 'package:my_work_plz/home/buttonPress.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../stretch/stretch1.dart';
import '../theme/color.dart';
import '../tutorial/profile.dart';

class stretch13home extends StatefulWidget {
  const stretch13home({super.key});

  @override
  State<stretch13home> createState() => _stretch13homeState();
}

class _stretch13homeState extends State<stretch13home> {
  int _selectedIndex = 2;
  static const List<Widget> _widgetOptions = <Widget>[
    home1(),
    home1(),
    stretch100_1(),
    stretch1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
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
              label: '홈',
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(
                width: 30,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 3.0, top: 10),
                    child: ImageIcon(AssetImage('assets/un_report.png'))),
              ),
              label: '리포트',
            ),
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
              label: '스트레칭',
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.0, top: 10),
                child: ImageIcon(
                  AssetImage('assets/un_setting.png'),
                ),
              ),
              label: '설정',
            ),
          ],
          selectedItemColor: Main,
        ),
      ),
    );
  }
}

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  bool is1 = false;
  bool is2 = false;
  bool is3 = false;
  bool is4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 115,
        leading: Padding(
          padding: const EdgeInsets.only(left: 37.0),
          child: SvgPicture.asset('assets/name_logo.svg'),
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
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => noti()));
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
                  Image.asset('assets/d_60.png'),
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
              "${user().input}님! 자세를 위해 열심히 하고 있나요?",
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
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 150,
                      foregroundImage: AssetImage('assets/01.gif')),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home2()));
                      },
                      iconSize: 265,
                      icon: Image.asset(
                        'assets/home1_circle.png',
                        color: Colors.transparent,
                      )),
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
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => more(),
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c),
                      ),
                    );
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
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => sit(),
                            transitionDuration: Duration(seconds: 0),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ),
                        );
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
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => lie(),
                            transitionDuration: Duration(seconds: 0),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ),
                        );
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
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => stand(),
                            transitionDuration: Duration(seconds: 0),
                            transitionsBuilder: (_, a, __, c) =>
                                FadeTransition(opacity: a, child: c),
                          ),
                        );
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

String result = '';
bool is1 = true;
bool is2 = false;

class stretch100_1 extends StatefulWidget {
  const stretch100_1({super.key});

  @override
  State<stretch100_1> createState() => _stretch100_1State();
}

class _stretch100_1State extends State<stretch100_1> {
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [is1, is2];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 14),
                child: Center(
                    child: Text('스트레칭', style: title1(size: 26, color: Main))),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ToggleButtons(
                        color: Colors.transparent,
                        fillColor: Colors.transparent,
                        borderColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        selectedColor: Colors.transparent,
                        selectedBorderColor: Colors.transparent,
                        // ignore: sort_child_properties_last
                        children: [
                          Expanded(
                            child: Padding(
                                // ignore: prefer_const_constructors
                                padding: EdgeInsets.only(right: 30),
                                child: is1
                                    ? Image.asset(
                                        'assets/command.png',
                                        width: 160,
                                      )
                                    : Image.asset(
                                        'assets/un_command.png',
                                        width: 160,
                                      )),
                          ),
                          Expanded(
                            child: Padding(
                                // ignore: prefer_const_constructors
                                padding: EdgeInsets.only(left: 0),
                                child: is2
                                    ? Image.asset(
                                        'assets/searchon.png',
                                        width: 160,
                                      )
                                    : Image.asset(
                                        'assets/un_search.png',
                                        width: 160,
                                      )),
                          ),
                        ],
                        isSelected: isSelected,
                        onPressed: toggleSelect,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(children: [is1 ? command() : search()]),
    );
  }

  void toggleSelect(value) {
    if (value == 0) {
      is1 = true;
      is2 = false;
    } else {
      is1 = false;
      is2 = true;
    }
    setState(() {
      isSelected = [is1, is2];
    });
  }
}

class command extends StatefulWidget {
  const command({super.key});

  @override
  State<command> createState() => _commandState();
}

class _commandState extends State<command> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 30),
              child: Text("허리 구부려 앉는 당신을 위한 스트레칭",
                  style: title2(color: text, size: 19))),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.transparent,
                iconSize: 446,
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => stretch1_6(),
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c)),
                  );
                },
                icon: Image.asset('assets/100stret1.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 290),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.transparent,
                iconSize: 446,
                onPressed: () {},
                icon: Image.asset('assets/100stret2.png')),
          ),
          //stret2
          Padding(
            padding: const EdgeInsets.only(top: 620, left: 30),
            child: Text("엎드려 자는 당신을 위한 스트레칭",
                style: title2(color: text, size: 19)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 565.0),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.transparent,
                iconSize: 446,
                onPressed: () {},
                icon: Image.asset('assets/100stret3.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 755),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.transparent,
                iconSize: 585,
                onPressed: () {},
                icon: Image.asset('assets/100stret4.png')),
          ),
          // stret3
          Padding(
            padding: const EdgeInsets.only(top: 1220, left: 30),
            child: Text("짝다리하고 서 있는 당신을 위한 스트레칭",
                style: title2(color: text, size: 19)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1103.0),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.transparent,
                iconSize: 546,
                onPressed: () {},
                icon: Image.asset('assets/100stret5.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1375),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.transparent,
                iconSize: 545,
                onPressed: () {},
                icon: Image.asset('assets/100stret6.png')),
          ),
        ],
      ),
    );
  }
}

String result2 = '';
bool is11 = true;
bool is22 = false;

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [is1, is2];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 34.0, left: 30, right: 30),
          child: Stack(
            children: [
              SizedBox(
                height: 47,
                child: TextField(
                  cursorColor: Main,
                  obscureText: true,
                  style: body6(size: 15, color: Gray2),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 3, left: 18),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Main),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Main),
                    ),
                    hintText: '키워드 검색',
                    hintStyle: body6(size: 15, color: Gray2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 310),
                child: SvgPicture.asset('assets/iconsearch.svg'),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 160.0, top: 17),
              child: ToggleButtons(
                color: Colors.transparent,
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
                splashColor: Colors.transparent,
                selectedColor: Colors.transparent,
                selectedBorderColor: Colors.transparent,
                children: <Widget>[
                  is1
                      ? Image.asset('assets/huri_on.png', width: 90)
                      : Image.asset('assets/huri_un.png', width: 90),
                  is2
                      ? Image.asset('assets/neck_on.png', width: 90)
                      : Image.asset('assets/neck_un.png', width: 90),
                ],
                isSelected: isSelected,
                onPressed: toggleSelect2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 183.0, top: 20),
              child: Image.asset('assets/shol.png', width: 90),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 275.0, top: 20),
              child: Image.asset('assets/head.png', width: 90),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 70),
              child: Image.asset('assets/gol.png', width: 90),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 93.0, top: 70),
              child: Image.asset('assets/knee.png', width: 90),
            )
          ],
        ),
        is1
            ? Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 4, right: 15),
                child: Image.asset('assets/hurigroup.png'),
              )
            : Padding(
                padding: const EdgeInsets.only(left: 23.0, top: 10, right: 20),
                child: Image.asset('assets/mokgroup.png'),
              )
      ],
    ));
  }

  void toggleSelect2(value) {
    if (value == 0) {
      is1 = true;
      is2 = false;
    } else {
      is1 = false;
      is2 = true;
    }
    setState(() {
      isSelected = [is1, is2];
    });
  }
}
