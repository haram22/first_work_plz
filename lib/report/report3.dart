import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/color.dart';
import '../theme/text_style.dart';

bool is1 = true;
bool is2 = false;

class report3 extends StatefulWidget {
  const report3({super.key});

  @override
  State<report3> createState() => _report3State();
}

class _report3State extends State<report3> {
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
            title: Text("리포트s", style: title1(size: 26, color: Main))),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Stack(
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
                      onPressed: toggleSelect,
                    ),
                  ),
                ),
              ],
            ),
          ),
          is1
              ? Stack(children: [
                  Container(
                    height: 736,
                    child: SingleChildScrollView(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Image.asset('assets/report26.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])
              : Container(
                  height: 736,
                  child: SingleChildScrollView(
                    child: Image.asset('assets/report5.png'),
                  ),
                )
        ]));
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
