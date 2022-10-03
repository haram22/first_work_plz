import 'package:my_work_plz/report/report12.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/color.dart';

String result = '';
bool is1 = true;
bool is2 = false;

class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
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
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('리포트', style: title1(size: 26, color: Main))),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 54, width: double.infinity, color: Colors.white),
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
                                  ? SvgPicture.asset(
                                      'assets/treport_select.svg',
                                      width: 160,
                                    )
                                  : SvgPicture.asset(
                                      'assets/treport_un.svg',
                                      width: 160,
                                    )),
                        ),
                        Center(
                          child: Padding(
                              // ignore: prefer_const_constructors
                              padding: EdgeInsets.only(top: 0),
                              child: is2
                                  ? SvgPicture.asset(
                                      'assets/jreport_select.svg',
                                      width: 184.5,
                                    )
                                  : SvgPicture.asset(
                                      'assets/jreport_un.svg',
                                      width: 184.5,
                                    )),
                        ),
                      ],
                      isSelected: isSelected,
                      onPressed: toggleSelect),
                ),
              ),
            ],
          ),
          Container(
            height: 636.6,
            child: SingleChildScrollView(
              child: is1
                  ? tong()
                  : Container(
                      height: 736,
                      child: SingleChildScrollView(
                        child: Image.asset('assets/report5.png'),
                      ),
                    ),
            ),
          )
        ],
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

class tong extends StatefulWidget {
  const tong({super.key});

  @override
  State<tong> createState() => _tongState();
}

class _tongState extends State<tong> {
  @override
  bool isinput = true;
  Widget build(BuildContext context) {
    return isinput
        ? SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 23.0, left: 36, bottom: 23),
                child: Text(
                  "오늘의 통증",
                  style: title2(size: 19, color: text),
                ),
              ),
              Image.asset('assets/red_date.png', width: 484.65),
              Stack(
                children: [
                  Image.asset('assets/report_rect.png'),
                  Padding(
                      padding: const EdgeInsets.only(top: 150.0, left: 150),
                      child: SizedBox(
                        height: 44,
                        width: 121,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 3,
                            primary: Main,
                            onPrimary: Gray1,
                            side: BorderSide(
                                width: 5.0, color: Colors.transparent),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                          ),
                          onPressed: () {
                            setState(() {
                              isinput = false;
                            });
                          },
                          child: Text('통증입력',
                              style: text3(size: 20, color: Colors.white)),
                        ),
                      ))
                ],
              ),
              Image.asset('assets/report_9.png'),
              Padding(
                padding: const EdgeInsets.only(top: 52.0, left: 36, bottom: 38),
                child: Text(
                  "월별 통증 분석",
                  style: title2(size: 19, color: text),
                ),
              ),
              Center(
                child: Image.asset('assets/report_analyze.png', width: 312.59),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.41, bottom: 52),
                child: Center(
                  child: Image.asset('assets/report_last.png', width: 360),
                ),
              ),
            ]),
          )
        : report12();
  }
}
