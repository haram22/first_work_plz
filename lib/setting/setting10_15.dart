import 'package:flutter/material.dart';
import 'package:my_work_plz/setting/setting1_8.dart';
import 'package:my_work_plz/theme/text_style.dart';
import '../button/navigateButton.dart';
import '../home/home.dart';
import '../report/report.dart';
import '../stretch/stretch1.dart';
import '../theme/color.dart';
import '../tutorial/profile.dart';
import '../tutorial/time.dart';

class setting10 extends StatefulWidget {
  const setting10({super.key});

  @override
  State<setting10> createState() => _setting10State();
}

class _setting10State extends State<setting10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backArrow(),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "통증기록 알림 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Column(
        children: [
          SizedBox(height: 50),
          Align(
              alignment: Alignment.center,
              child: Text(
                "통증 기록 알람을 받길 원하는\n    시간대를 설정해주세요",
                style: subtitle1(size: 18, color: text),
              )),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 58.0, left: 10, right: 10),
                child: Image.asset('assets/timecard.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: RawPickerTest()),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 240, left: 95, right: 100),
                child: Divider(
                  thickness: 1,
                  color: Main,
                ),
              )),
              Center(
                  child: Padding(
                padding:
                    const EdgeInsets.only(top: 285.0, left: 95, right: 100),
                child: Divider(
                  thickness: 1,
                  color: Main,
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 558.0),
                child: Center(
                  child: SizedBox(
                    height: 44,
                    width: 121,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        primary: Main,
                        onPrimary: Gray1,
                        side: BorderSide(width: 5.0, color: Colors.transparent),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                      ),
                      onPressed: () {
                        _showdialog(context);
                      },
                      child: Text("저장",
                          style: button1(
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<dynamic> _showdialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        content: Text(
          '\n           저장을 완료했습니다!\n  매일 해당시간대에 통증기록을\n               완료해주세요!',
          style: subtitle1(size: 18, color: text),
        ),
        actions: [
          Center(
            child: Column(
              children: [
                nextButton(
                    buttonText: "확인",
                    navigator: home_back_setting(),
                    buttonColor: Main,
                    ispush: true),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class home_back_setting extends StatefulWidget {
  const home_back_setting({super.key});
  // final int indexx;
  @override
  State<home_back_setting> createState() => _home_back_settingState();
}

class _home_back_settingState extends State<home_back_setting> {
  late final int indexx;
  int _selectedIndex = 3;
  late List<bool> ispress;
  bool ispress1 = true;
  bool ispress2 = true;
  bool ispress3 = true;
  bool ispress4 = true;

  static const List<Widget> _widgetOptions = <Widget>[
    home1(),
    report(),
    stretch1(),
    setting1(),
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

class setting13 extends StatefulWidget {
  const setting13({super.key});

  @override
  State<setting13> createState() => _setting13State();
}

class _setting13State extends State<setting13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backArrow(),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "프로필 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Image.asset('assets/setting13.png'),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 275.0),
            child: Text(
              "${user().input}",
              style: subtitle5(size: 20, color: Main),
            ),
          ),
        )
      ]),
    );
  }
}

class setting14 extends StatefulWidget {
  const setting14({super.key});

  @override
  State<setting14> createState() => _setting14State();
}

class _setting14State extends State<setting14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backArrow(),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "측정 센서 설정",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Image.asset('assets/setting14.png'),
        ),
      ]),
    );
  }
}

class setting15 extends StatefulWidget {
  const setting15({super.key});

  @override
  State<setting15> createState() => _setting15State();
}

class _setting15State extends State<setting15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: backArrow(),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "멤버 관리",
            style: title3(size: 23, color: Main),
          )),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Image.asset('assets/setting15.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 145, top: 130),
          child: Text(
            "${user().input} (나)",
            style: subtitle4(size: 16, color: text),
          ),
        ),
      ]),
    );
  }
}
