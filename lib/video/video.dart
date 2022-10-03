import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:my_work_plz/button/navigateButton.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

class videohome4 extends StatefulWidget {
  const videohome4({super.key});

  @override
  State<videohome4> createState() => _videohome4State();
}

class _videohome4State extends State<videohome4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/home4.png'),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 15),
              child: backArrowTrans()),
          Padding(
            padding: const EdgeInsets.only(top: 734.0, left: 284),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => home4_1(),
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c)),
                  );
                },
                icon: Icon(Icons.circle, color: Colors.transparent, size: 80)),
          )
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
              child: backArrowTrans()),
          Padding(
              padding: const EdgeInsets.only(top: 759.0, left: 188),
              child: SizedBox(
                height: 64,
                width: 64,
                child: OutlinedButton(
                  child: Text(""),
                  style: OutlinedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    elevation: 0,
                    primary: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    side: BorderSide(width: 5.0, color: Colors.transparent),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200.0)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => VideoPlayerScreen(),
                          transitionDuration: Duration(seconds: 0),
                          transitionsBuilder: (_, a, __, c) =>
                              FadeTransition(opacity: a, child: c)),
                    );
                  },
                ),
              ))
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
                                pageBuilder: (_, __, ___) => videohome4(),
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
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
