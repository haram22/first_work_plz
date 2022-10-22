import 'package:flutter/material.dart';
import 'package:my_work_plz/theme/text_style.dart';
import '../theme/color.dart';
import '../tutorial/profile.dart';
import 'setting10_15.dart';
import 'setting_timer.dart';

class setting1 extends StatefulWidget {
  const setting1({super.key});

  @override
  State<setting1> createState() => _setting1State();
}

class _setting1State extends State<setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
            toolbarHeight: 60,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "설정",
              style: title3(size: 26, color: Main),
            )),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 33.0, left: 10, right: 10),
                  child: Image.asset(
                    'assets/setting_profile.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 97.0, left: 221),
                  child: Text(
                    ' ${user().input}',
                    style: title3(size: 23, color: Main),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 44.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting13(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 190,
                        color: Colors.transparent,
                      ),
                    )),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                  child: Image.asset('assets/setting1_last.png'),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting_first(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 64.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting10(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 119.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting14(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 169.0, left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => setting15(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.transparent,
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}
