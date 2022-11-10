import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../theme/color.dart';

bool is1 = true;
bool is2 = false;
bool button1 = false;
bool button2 = false;
bool button3 = false;
bool button4 = false;
bool button5 = false;
bool button6 = false;
double _value1 = 20;
double _value2 = 20;
double _value3 = 20;
double _value4 = 20;
double _value5 = 20;
double _value6 = 20;
int test = 1;

class report12 extends StatefulWidget {
  const report12({super.key});

  @override
  State<report12> createState() => _report12State();
}

class _report12State extends State<report12> {
  late List<bool> isSelected;
  bool isSave = true;
  bool isCard = true;
  @override
  void initState() {
    isSelected = [is1, is2];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isSave
        ? SingleChildScrollView(
            child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 37),
                        child: Image.asset(
                          'assets/card_report.png',
                          height: 580,
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 128.0, left: 80),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/person.png',
                                  width: 171.31,
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 74.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button1 = !button1;
                                        });
                                      },
                                      child: button1
                                          ? SvgPicture.asset('assets/phead.svg')
                                          : SvgPicture.asset('assets/head.svg'),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 77.0, top: 21),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button2 = !button2;
                                        });
                                      },
                                      child: button2
                                          ? SvgPicture.asset('assets/pneck.svg')
                                          : SvgPicture.asset('assets/neck.svg'),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 66.0, top: 30),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button3 = !button3;
                                        });
                                      },
                                      child: button3
                                          ? SvgPicture.asset('assets/pshol.svg')
                                          : SvgPicture.asset('assets/shol.svg'),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 78.0, top: 50),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button4 = !button4;
                                        });
                                      },
                                      child: button4
                                          ? SvgPicture.asset('assets/phuri.svg')
                                          : SvgPicture.asset('assets/huri.svg'),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 45.0, top: 140),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button5 = !button5;
                                        });
                                      },
                                      child: button5
                                          ? SvgPicture.asset(
                                              'assets/pgol.svg',
                                              width: 82,
                                            )
                                          : SvgPicture.asset(
                                              'assets/gol.svg',
                                              width: 82,
                                            ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 53.0, top: 190),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button6 = !button6;
                                        });
                                      },
                                      child: button6
                                          ? SvgPicture.asset(
                                              'assets/pknee.svg',
                                              height: 26,
                                            )
                                          : SvgPicture.asset(
                                              'assets/knee.svg',
                                              height: 26,
                                            ),
                                    ))
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              // 머리
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 110, left: 30, bottom: 5),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button1 = !button1;
                                          test = 1;
                                        });
                                      },
                                      child: button1
                                          ? SvgPicture.asset(
                                              'assets/onhead.svg')
                                          : SvgPicture.asset(
                                              'assets/unhead.svg'))),

                              // 목
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 30, bottom: 5),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button2 = !button2;
                                          test = 2;
                                        });
                                      },
                                      child: button2
                                          ? SvgPicture.asset(
                                              'assets/onneck.svg')
                                          : SvgPicture.asset(
                                              'assets/unneck.svg'))),

                              // 어깨
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 30, bottom: 5),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button3 = !button3;
                                        });
                                      },
                                      child: button3
                                          ? SvgPicture.asset(
                                              'assets/onshol.svg')
                                          : SvgPicture.asset(
                                              'assets/unshol.svg'))),

                              // 허리
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 30, bottom: 5),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button4 = !button4;
                                        });
                                      },
                                      child: button4
                                          ? SvgPicture.asset(
                                              'assets/onhuri.svg')
                                          : SvgPicture.asset(
                                              'assets/unhuri.svg'))),
                              // 골반
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 30, bottom: 5),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button5 = !button5;
                                        });
                                      },
                                      child: button5
                                          ? SvgPicture.asset('assets/ongol.svg')
                                          : SvgPicture.asset(
                                              'assets/ungol.svg'))),

                              // 무릎
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 30, bottom: 5),
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          button6 = !button6;
                                        });
                                      },
                                      child: button6
                                          ? SvgPicture.asset(
                                              'assets/onknee.svg')
                                          : SvgPicture.asset(
                                              'assets/unknee.svg'))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 450.0, left: 50, right: 50),
                            child: button1
                                ? SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 10.0,
                                      minThumbSeparation: 2,
                                      thumbColor: pain,
                                      activeTickMarkColor: pain,
                                      activeTrackColor: pain,
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 12.0),
                                      overlayColor: Colors.transparent,
                                      inactiveTickMarkColor: Gray2,
                                      inactiveTrackColor: Gray2,
                                    ),
                                    child: button2
                                        ? button3
                                            // button1,2,3 == true
                                            ? button4
                                                // 4= true
                                                ? button5
                                                    //5=true
                                                    ? button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value5,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value5 = value;
                                                              });
                                                            },
                                                          )
                                                    //1,2,3,4=true, 5=false
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value4,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value4 = value;
                                                              });
                                                            },
                                                          )
                                                //1,2,3= true, 4=false
                                                : Slider(
                                                    min: 0.0,
                                                    max: 50.0,
                                                    divisions: 4,
                                                    value: _value3,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        _value3 = value;
                                                      });
                                                    },
                                                  )
                                            // 1,2 true, 3=false
                                            : button4
                                                ? button5
                                                    ? Slider(
                                                        min: 0.0,
                                                        max: 50.0,
                                                        divisions: 4,
                                                        value: _value4,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            _value4 = value;
                                                          });
                                                        },
                                                      )
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value3,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value3 = value;
                                                              });
                                                            },
                                                          )
                                                //4 false
                                                : button5
                                                    ? button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value5,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value5 = value;
                                                              });
                                                            },
                                                          )
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value2,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value2 = value;
                                                              });
                                                            },
                                                          )
                                        //1=true, 2=fale
                                        : button3
                                            //3= true
                                            ? button4
                                                ? button5
                                                    ? button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value5,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value5 = value;
                                                              });
                                                            },
                                                          )
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value4,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value4 = value;
                                                              });
                                                            },
                                                          )
                                                //4 false
                                                : button5
                                                    ? button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value5,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value5 = value;
                                                              });
                                                            },
                                                          )
                                                    //5 false
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value3,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value3 = value;
                                                              });
                                                            },
                                                          )
                                            //2,3=false
                                            : button4
                                                ? button5
                                                    ? button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value5,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value5 = value;
                                                              });
                                                            },
                                                          )
                                                    //button5 false
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value4,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value4 = value;
                                                              });
                                                            },
                                                          )
                                                //2,3,4 false
                                                : button5
                                                    ? button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value5,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value5 = value;
                                                              });
                                                            },
                                                          )
                                                    : button6
                                                        ? Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value6,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value6 = value;
                                                              });
                                                            },
                                                          )
                                                        : Slider(
                                                            min: 0.0,
                                                            max: 50.0,
                                                            divisions: 4,
                                                            value: _value1,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _value1 = value;
                                                              });
                                                            },
                                                          )
                                    // 1=false
                                    )
                                : SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 10.0,
                                      minThumbSeparation: 2,
                                      thumbColor: Gray2,
                                      activeTickMarkColor: Gray2,
                                      activeTrackColor: Gray2,
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 12.0),
                                      overlayColor: Colors.transparent,
                                      inactiveTickMarkColor: Gray2,
                                      inactiveTrackColor: Gray2,
                                    ),
                                    child: Slider(
                                      min: 0.0,
                                      max: 50.0,
                                      divisions: 4,
                                      value: 20,
                                      onChanged: (value) {
                                        setState(() {
                                          _value1 = value;
                                        });
                                      },
                                    ),
                                  )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 500.0, left: 75),
                      child: Image.asset(
                        'assets/sliderText.png',
                        width: 268,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 558.0, left: 77),
                      child: Container(
                          height: 34,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 538.0, left: 272),
                      child: Container(
                          height: 34,
                          width: 66,
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isSave = false;
                              });
                            },
                          )),
                    )
                  ],
                ),
              )
            ],
          ))
        : isCard
            ? Column(children: [
                is1
                    ? Stack(children: [
                        Container(
                          height: 736,
                          child: SingleChildScrollView(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 18.0, bottom: 150),
                                  child: Image.asset('assets/report26.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 570.0, left: 20),
                                  child: SizedBox(
                                    width: 375,
                                    height: 320,
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                //////////////
                                                color: Colors.transparent,
                                                width: 3),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(27)))),
                                        onPressed: () {
                                          setState(() {
                                            isCard = false;
                                          });
                                        },
                                        child: Container(
                                          child: Text(""),
                                        )),
                                  ),
                                )
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
              ])
            : Container(
                height: 736,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Image.asset('assets/report4_1.png'),
                      SizedBox(height: 10),
                      Image.asset('assets/report4_2.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 130.0),
                        child: Image.asset('assets/report4_3.png'),
                      ),
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
