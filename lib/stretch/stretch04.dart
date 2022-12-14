import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import '../theme/color.dart';
import 'stretch05.dart';
import 'stretch1.dart';

class stret04 extends StatefulWidget {
  const stret04({super.key});

  @override
  State<stret04> createState() => _stret04State();
}

class _stret04State extends State<stret04> {
  CountDownController _controller = CountDownController();
  bool _isPause = true;
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: IconButton(
              onPressed: () {
                _controller.pause();

                !_isPause
                    ? Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => stretch1_6(),
                          transitionDuration: Duration(seconds: 0),
                          transitionsBuilder: (_, a, __, c) =>
                              FadeTransition(opacity: a, child: c),
                        ),
                      )
                    : showDialog(
                        context: context,
                        builder: (BuildContext content) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0, left: 5, right: 5, bottom: 50),
                                  child: Text(
                                    "??????????????? ???????????? ???????????????!\n????????? ?????? ???????????? ??? ???????????????\n???????????? ????????????. ??????????????????????",
                                    style: subtitle1(size: 18, color: text),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 13,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Main),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              //side: BorderSide(color: Colors.red)
                                            ))),
                                        child: Container(
                                            height: 44,
                                            width: 79,
                                            child: Center(
                                                child: Text(
                                              '?????????',
                                              style: button1(
                                                  size: 20,
                                                  color: Colors.white),
                                              // style: smallTextStyle(),
                                            ))),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (_, __, ___) =>
                                                  stretch1_6(),
                                              transitionDuration:
                                                  Duration(seconds: 0),
                                              transitionsBuilder:
                                                  (_, a, __, c) =>
                                                      FadeTransition(
                                                          opacity: a, child: c),
                                            ),
                                          );
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Color.fromRGBO(
                                                        204, 204, 204, 1)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    side: BorderSide(color: Color.fromRGBO(204, 204, 204, 0))))),
                                        child: Container(
                                            height: 44,
                                            width: 79,
                                            child: Center(
                                                child: Text(
                                              '???',
                                              style: button1(
                                                  size: 20,
                                                  color: Colors.white),
                                            ))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                setState(() {
                  _isPause = true;
                });
              },
              icon: Icon(Icons.arrow_back_ios),
              color: text,
            ),
          )),
      body: Stack(
        children: [
          Center(
            child: Column(children: [
              Text(
                "?????? ????????????",
                style: title3(size: 23, color: Main),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 18),
                child: Text(
                  "????????? ????????? ???????????? ????????? ???????????????\n????????? ????????? ??? ??????, ?????? ?????? ????????????\n?????? ????????? ???????????? ???????????????",
                  style: subtitle4(size: 16, color: text),
                ),
              ),
              Image.asset(
                'assets/stretching04.gif',
                width: 320,
              ),
            ]),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 230.0),
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 58.0),
                      child: CircularCountDownTimer(
                        width: MediaQuery.of(context).size.width / 2.1,
                        height: MediaQuery.of(context).size.height / 2,
                        duration: 150,
                        ringColor: background,
                        fillColor: Main,
                        onStart: () {
                          debugPrint('Countdown Started');
                        },
                        controller: _controller,
                        backgroundColor: Colors.white54,
                        strokeWidth: 10.0,
                        strokeCap: StrokeCap.round,
                        isTimerTextShown: true,
                        isReverse: true,
                        autoStart: true,
                        onComplete: () {
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
                        textFormat: CountdownTextFormat.MM_SS,
                        textStyle: title3(size: 52, color: Main),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 400.0),
                      child: SizedBox(
                        width: 121,
                        height: 44,
                        child: FloatingActionButton.extended(
                          backgroundColor: _isPause ? Main : text,
                          onPressed: () {
                            setState(() {
                              if (value == 0) {
                                _isPause = false;
                                _controller.pause();
                                value = 1;
                              } else if (!_isPause) {
                                _isPause = true;
                                _controller.resume();
                              } else {
                                _isPause = false;
                                _controller.pause();
                              }
                            });
                          },
                          label: Text(
                            _isPause ? '????????????' : '??????',
                            style: button1(size: 20, color: Colors.white),
                          ),
                          focusColor: _isPause ? text : Main,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 520.0, left: 35),
            child: IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: text,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 520.0, left: 335),
            child: IconButton(
                iconSize: 40,
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
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: text,
                )),
          )
        ],
      ),
    );
  }
}
