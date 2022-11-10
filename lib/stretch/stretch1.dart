import 'package:flutter_svg/svg.dart';
import 'package:my_work_plz/button/navigateButton.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import '../home/gotostret.dart';
import '../home/stret_un100.dart';
import '../theme/color.dart';
import 'stretch01.dart';
import 'stretch02.dart';
import 'stretch03.dart';
import 'stretch04.dart';
import 'stretch05.dart';

String result = '';
bool is1 = true;
bool is2 = false;

class stretch1 extends StatefulWidget {
  const stretch1({super.key});

  @override
  State<stretch1> createState() => _stretch1State();
}

class _stretch1State extends State<stretch1> {
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
                child: is1 ? command() : search(),
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

class command extends StatefulWidget {
  const command({super.key});

  @override
  State<command> createState() => _commandState();
}

class _commandState extends State<command> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        // shrinkWrap: true,
        child: Column(
          children: [
            Stack(
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
                                FadeTransition(opacity: a, child: c),
                          ),
                        );
                      },
                      icon: Image.asset('assets/stret1.png')),
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
                      icon: Image.asset('assets/stret2.png')),
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
                      icon: Image.asset('assets/stret3.png')),
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
                      icon: Image.asset('assets/stret4.png')),
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
                      icon: Image.asset('assets/stret5.png')),
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
                      icon: Image.asset('assets/stret6.png')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  late List<bool> isSelected = [true, false];
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    isSelected = [is1, is2];
    is1 = true;
    is2 = false;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  String? inputtedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Image.asset('assets/field.png', height: 55),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 34.0, left: 30, right: 30),
          //   child:
          //   Stack(
          //     children: [
          //       SizedBox(
          //         height: 70,
          //         child: Image.asset('assets/field.png'),
          //         // TextField(
          //         //   controller: _controller,
          //         //   // textAlign: TextAlign.center,
          //         //   cursorColor: Main,
          //         //   style: body6(size: 15, color: Main),
          //         //   decoration: InputDecoration(
          //         //     contentPadding: EdgeInsets.only(top: 3, left: 18),
          //         //     filled: true,
          //         //     fillColor: Colors.white,
          //         //     enabledBorder: OutlineInputBorder(
          //         //       borderRadius: BorderRadius.circular(30),
          //         //       borderSide: BorderSide(width: 1, color: Main),
          //         //     ),
          //         //     focusedBorder: OutlineInputBorder(
          //         //       borderRadius: BorderRadius.circular(30),
          //         //       borderSide: BorderSide(width: 1, color: Main),
          //         //     ),
          //         //     hintText: '키워드 검색',
          //         //     hintStyle: body6(size: 15, color: Gray2),
          //         //   ),
          //         // ),
          //       ),
          //       // Padding(
          //       //   padding: const EdgeInsets.only(top: 10.0, left: 310),
          //       //   child: SvgPicture.asset('assets/iconsearch.svg'),
          //       // ),
          //     ],
          //   ),
          // ),
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
                        ? Image.asset(
                            'assets/huri_on.png',
                            width: 90,
                          )
                        : Image.asset(
                            'assets/huri_un.png',
                            width: 90,
                          ),
                    is2
                        ? Image.asset(
                            'assets/neck_on.png',
                            width: 90,
                          )
                        : Image.asset(
                            'assets/neck_un.png',
                            width: 90,
                          ),
                  ],
                  isSelected: isSelected,
                  onPressed: toggleSelect2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 183.0, top: 20),
                child: Image.asset(
                  'assets/shol.png',
                  width: 90,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 275.0, top: 20),
                child: Image.asset(
                  'assets/head.png',
                  width: 90,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 70),
                child: Image.asset(
                  'assets/gol.png',
                  width: 90,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 93.0, top: 70),
                child: Image.asset(
                  'assets/knee.png',
                  width: 90,
                ),
              )
            ],
          ),
          is2
              ? Padding(
                  padding:
                      const EdgeInsets.only(left: 23.0, top: 10, right: 20),
                  child: Image.asset('assets/mokgroup.png'),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4, right: 15),
                  child: Image.asset('assets/hurigroup.png'),
                )
        ],
      ),
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

class stretch1_6 extends StatefulWidget {
  const stretch1_6({super.key});

  @override
  State<stretch1_6> createState() => _stretch1_6State();
}

class _stretch1_6State extends State<stretch1_6> {
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
                      pageBuilder: (_, __, ___) => homestret_un(),
                      transitionDuration: Duration(seconds: 0),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ),
                  );
                }),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "굽은 등 교정 스트레칭",
            style: text3(size: 23, color: Main),
          )),
      body: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              "5단계 / 소요시간 7분",
              style: button1(size: 20, color: text),
            ),
          ),
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
        // 승모근 늘려주기
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => stret01(),
                  transitionDuration: Duration(seconds: 0),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset('assets/time1.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 17.0, left: 12),
                  child: Image.asset('assets/stretching01.gif', height: 120),
                )
              ],
            )),
        // 측면 어깨 풀어주기
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => stret02(),
                  transitionDuration: Duration(seconds: 0),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset('assets/time2.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 20),
                  child: Image.asset('assets/stretching02.gif', height: 110),
                )
              ],
            )),
        // 팔꿈치 벌려주기
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => stret03(),
                  transitionDuration: Duration(seconds: 0),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset('assets/time3.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 18),
                  child: Image.asset('assets/stretching03.gif', height: 110),
                )
              ],
            )),
        // 어깨 내려주기
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => stret04(),
                  transitionDuration: Duration(seconds: 0),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset('assets/time4.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 18),
                  child: Image.asset('assets/stretching04.gif', height: 100),
                )
              ],
            )),
        // 어깨 당겨주기
        IconButton(
            padding: EdgeInsets.zero,
            iconSize: 170,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => stret05(),
                  transitionDuration: Duration(seconds: 0),
                  transitionsBuilder: (_, a, __, c) =>
                      FadeTransition(opacity: a, child: c),
                ),
              );
            },
            icon: Stack(
              children: [
                Image.asset('assets/time5.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 18),
                  child: Image.asset('assets/stretching05.gif', height: 110),
                )
              ],
            )),
      ]),
    );
  }
}
