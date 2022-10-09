import 'package:my_work_plz/button/navigateButton.dart';
import 'package:my_work_plz/tutorial/onboarding.dart';
import 'package:my_work_plz/tutorial/onboarding2.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login.dart';
import 'package:provider/provider.dart';

final TextEditingController inputController = TextEditingController();

class user extends ChangeNotifier {
  final String _input = inputController.text;
  String get input => _input;

  notifyListeners();
}

final _formKey = GlobalKey<FormState>();

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late user _userProvider;
  final String firstImage = 'assets/yellow.svg';
  bool ispressed = false;
  @override
  String? inputtedValue;
  bool userInteracts() => inputtedValue != null;
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => nextProfile(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 37),
              Center(
                  child: Column(
                children: [
                  Text("프로필 설정", style: title1(color: text, size: 26)),
                  Padding(
                      padding: EdgeInsets.only(top: 16.38, bottom: 30),
                      child: SvgPicture.asset('assets/profile_text1.svg')),
                  Row(
                    children: [
                      SizedBox(width: 93),
                      SizedBox(
                          width: 108, child: Image.asset('assets/yellow.png')),
                      SizedBox(width: 7),
                      SizedBox(
                          width: 108,
                          child: IconButton(
                              padding: const EdgeInsets.all(0.0),
                              onPressed: () {
                                setState(() {
                                  ispressed = !ispressed;
                                });
                              },
                              iconSize: 108,
                              icon: ispressed
                                  ? Image.asset('assets/select_blue.png')
                                  : Image.asset('assets/purple.png'))),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 93),
                      SizedBox(
                          width: 108, child: Image.asset('assets/blues.png')),
                      SizedBox(width: 7),
                      SizedBox(
                          width: 108, child: Image.asset('assets/pink.png')),
                    ],
                  ),
                  SizedBox(height: 70),
                  Text("캐릭터 닉네임을 정해주세요.",
                      style: subtitle2(color: text, size: 18)),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 92, right: 92, top: 30),
                    child: TextFormField(
                        controller: inputController,
                        textAlign: TextAlign.center,
                        cursorColor: text,
                        style: subtitle1(color: text),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: pants)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: pants, width: 1.0)),
                            filled: true,
                            fillColor: white,
                            hintText: "입력하기",
                            hintStyle: TextStyle(color: pants)),
                        validator: (value) {
                          if (inputtedValue != null &&
                              (value == null || value.isEmpty)) {
                            return '';
                          }
                          return null;
                        },
                        onChanged: (value) =>
                            setState(() => inputtedValue = value)),
                  ),
                  SizedBox(height: 100),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 49),
                        child: SizedBox(
                          height: 44,
                          width: 121,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Gray1,
                              elevation: 0,
                              side: BorderSide(
                                  width: 5.0, color: Colors.transparent),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginPage()));
                            },
                            child: Text('뒤로가기',
                                style: button1(size: 20, color: Colors.white)),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 49),
                        child: SizedBox(
                          height: 44,
                          width: 121,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Main,
                              onPrimary: Gray1,
                              side: BorderSide(
                                  width: 5.0, color: Colors.transparent),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                            ),
                            onPressed: !userInteracts() ||
                                    _formKey.currentState == null ||
                                    !_formKey.currentState!.validate()
                                ? null
                                : () {
                                    Provider(
                                      create: (context) => user(),
                                      child: iphone(),
                                    );
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              nextProfile(),
                                          transitionDuration:
                                              Duration(seconds: 0),
                                          transitionsBuilder: (_, a, __, c) =>
                                              FadeTransition(
                                                  opacity: a, child: c)),
                                    );
                                  },
                            child: Text('확인',
                                style: button1(size: 20, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class nextProfile extends StatefulWidget {
  const nextProfile({super.key});

  @override
  State<nextProfile> createState() => _nextProfileState();
}

class _nextProfileState extends State<nextProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset('assets/4.png'),
      Padding(
        padding: const EdgeInsets.only(left: 27.0, top: 100),
        child: SizedBox(
          width: 360,
          height: 100,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                elevation: 5,
                backgroundColor: Main,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (_, __, ___) => page130(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c)),
                );
              },
              child: Text(
                "측정하기",
                style: title1(size: 26, color: Colors.white),
              )),
        ),
      ),
      Center(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 438.0),
            child: DefaultTextStyle(
              style: text5(size: 13, color: Colors.white),
              child: Text('정확한 서비스 제공을 위해 패치 센서를 통한 자세 측정이 필요합니다.'),
            )),
      ),
      Center(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 402.0),
            child: DefaultTextStyle(
              style: text5(size: 13, color: Colors.white),
              child: Text('측정 전에는 스트레칭, 통증기록과 같은 기본 기능만 이용 가능합니다'),
            )),
      )
    ]);
  }
}

class page130 extends StatefulWidget {
  const page130({super.key});

  @override
  State<page130> createState() => _page130State();
}

class _page130State extends State<page130> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/130.png'),
          Padding(
            padding: const EdgeInsets.only(top: 795.0, left: 250),
            child: nextButtonTrans(
                buttonText: '',
                navigator: checkProduct(),
                buttonColor: Colors.transparent,
                heights: 50,
                widths: 125,
                radi: 50,
                ispush: true),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 795.0, left: 40),
            child: nextButtonTrans(
                buttonText: '',
                navigator: checkProduct(),
                buttonColor: Colors.transparent,
                heights: 50,
                widths: 125,
                radi: 50,
                ispush: false),
          )
        ],
      ),
    );
  }
}
