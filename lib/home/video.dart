import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:my_work_plz/button/navigateButton.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'home.dart';
import 'lie.dart';
import 'stand.dart';

class home_sit extends StatefulWidget {
  const home_sit({super.key});

  @override
  State<home_sit> createState() => _home_sitState();
}

class _home_sitState extends State<home_sit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/sit_1.png'),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 15),
              child: backNavi(navigator: home(), colors: Colors.transparent)),
          Padding(
              padding: const EdgeInsets.only(top: 794.0, left: 144),
              child: nextButtonTrans(
                  buttonText: "",
                  navigator: home4_1(),
                  buttonColor: Colors.transparent,
                  heights: 50,
                  widths: 124,
                  radi: 50,
                  ispush: true))
        ],
      ),
    );
  }
}

class home_lie extends StatefulWidget {
  const home_lie({super.key});

  @override
  State<home_lie> createState() => _home_lieState();
}

class _home_lieState extends State<home_lie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/lie.png'),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 15),
              child: backNavi(navigator: home(), colors: Colors.transparent)),
          Padding(
              padding: const EdgeInsets.only(top: 794.0, left: 144),
              child: nextButtonTrans(
                  buttonText: "",
                  navigator: home4_1_lie(),
                  buttonColor: Colors.transparent,
                  heights: 50,
                  widths: 124,
                  radi: 50,
                  ispush: true))
        ],
      ),
    );
  }
}

class home_stand extends StatefulWidget {
  const home_stand({super.key});

  @override
  State<home_stand> createState() => _home_standState();
}

class _home_standState extends State<home_stand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/stand.png'),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 15),
              child: backNavi(navigator: home(), colors: Colors.transparent)),
          Padding(
              padding: const EdgeInsets.only(top: 794.0, left: 144),
              child: nextButtonTrans(
                  buttonText: "",
                  navigator: home4_1_stand(),
                  buttonColor: Colors.transparent,
                  heights: 50,
                  widths: 124,
                  radi: 50,
                  ispush: true))
        ],
      ),
    );
  }
}

class home4_1 extends StatefulWidget {
  const home4_1({super.key});

  @override
  State<home4_1> createState() => _home4_1State();
}

class _home4_1State extends State<home4_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/home4_1.png'),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 15),
              child: backNavi(navigator: home(), colors: Colors.transparent)),
          Padding(
              padding: const EdgeInsets.only(top: 757.0, left: 173),
              child: nextButtonTrans(
                  buttonText: "",
                  navigator: VideoPlayerScreen(),
                  buttonColor: Colors.transparent,
                  heights: 68,
                  widths: 68,
                  radi: 200,
                  ispush: true))
        ],
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  CountDownController _videocontroller = CountDownController();
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/real.MP4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(false);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
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
                        duration: 84,
                        ringColor: Colors.black,
                        fillColor: Colors.black,
                        onStart: () {
                          debugPrint('Countdown Started');
                        },
                        controller: _videocontroller,
                        backgroundColor: Colors.black,
                        strokeWidth: 10.0,
                        strokeCap: StrokeCap.round,
                        isTimerTextShown: true,
                        isReverse: true,
                        autoStart: true,
                        onComplete: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => home_sit(),
                                transitionDuration: Duration(seconds: 0),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c)),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          //_controller.value.isPlaying
          Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 00),
              child: SizedBox(
                height: 700, //44
                width: 500, // 121
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        surfaceTintColor: Colors.transparent,
                        elevation: 0,
                        primary: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(width: 5.0, color: Colors.transparent),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    onPressed: () {
                      setState(() {
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      });
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => video_done(),
                              transitionDuration: Duration(seconds: 0),
                              transitionsBuilder: (_, a, __, c) =>
                                  FadeTransition(opacity: a, child: c)));
                    },
                    child: Text("")),
              ))
        ],
      ),
    );
  }
}

class video_done extends StatefulWidget {
  const video_done({super.key});

  @override
  State<video_done> createState() => _video_doneState();
}

class _video_doneState extends State<video_done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/video_done.png'),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 15),
              child: backNavi(
                navigator: home_sit(),
                colors: Colors.transparent,
              )),
        ],
      ),
    );
  }
}
