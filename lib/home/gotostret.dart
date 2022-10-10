import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../setting/setting1_8.dart';
import '../stretch/stretch1.dart';
import '../theme/color.dart';
import '../theme/text_style.dart';
import '../tutorial/profile.dart';
import 'buttonPress.dart';
import '../report/report.dart';
import 'home09.dart';
import 'video.dart';

class homestret extends StatefulWidget {
  const homestret({super.key});
  @override
  State<homestret> createState() => _homestretState();
}

class _homestretState extends State<homestret> {
  int _selectedIndex = 2;
  late List<bool> ispress;
  bool ispress1 = true;
  bool ispress2 = true;
  bool ispress3 = true;
  bool ispress4 = true;

  static const List<Widget> _widgetOptions = <Widget>[
    home33(),
    report(),
    stret_back(),
    setting1()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 0.2)),
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
                      child: ImageIcon(AssetImage('assets/un_home.png'))),
                  label: '홈'),
              const BottomNavigationBarItem(
                  icon: SizedBox(
                      width: 30,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 3.0, top: 10),
                          child:
                              ImageIcon(AssetImage('assets/un_report.png')))),
                  label: '리포트'),
              const BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 40,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 3.0, top: 10),
                        child: ImageIcon(AssetImage('assets/un_stretch.png'))),
                  ),
                  label: '스트레칭'),
              const BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0, top: 10),
                    child: ImageIcon(AssetImage('assets/un_setting.png')),
                  ),
                  label: '설정'),
            ],
            selectedItemColor: Main),
      ),
    );
  }
}

String result = '';
bool is1 = true;
bool is2 = false;

class stret_back extends StatefulWidget {
  const stret_back({super.key});

  @override
  State<stret_back> createState() => _stret_backState();
}

class _stret_backState extends State<stret_back> {
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [is1, is2];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
          // toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('스트레칭', style: title1(size: 26, color: Main))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 54,
                  width: double.infinity,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: ToggleButtons(
                      color: Colors.transparent,
                      fillColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      selectedColor: Colors.transparent,
                      selectedBorderColor: Colors.transparent,
                      // ignore: sort_child_properties_last
                      children: [
                        Center(
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
                        Center(
                          child: Padding(
                              // ignore: prefer_const_constructors
                              padding: EdgeInsets.only(top: 0),
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
                ),
              ],
            ),
            Container(
              height: 636.6,
              child: SingleChildScrollView(
                child: is1 ? command1() : search(),
              ),
            )
          ],
        ),
      ),
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

class command1 extends StatefulWidget {
  const command1({super.key});

  @override
  State<command1> createState() => _command1State();
}

class _command1State extends State<command1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
        child: Image.asset('assets/stret100.png'),
      )),
    );
  }
}
