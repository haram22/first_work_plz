import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:my_work_plz/theme/color.dart';

class nextButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Widget navigator;
  final bool ispush;
  const nextButton(
      {super.key,
      required this.buttonText,
      required this.navigator,
      required this.buttonColor,
      required this.ispush});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 44,
        width: 121,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 3,
              primary: buttonColor,
              onPrimary: Gray1,
              side: BorderSide(width: 5.0, color: Colors.transparent),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0))),
          onPressed: () {
            ispush
                ? Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => navigator,
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c)),
                  )
                : Navigator.pop(context);
          },
          child:
              Text(buttonText, style: button1(color: Colors.white, size: 20)),
        ));
  }
}

class nextButtonTrans extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Widget navigator;
  final double heights;
  final double widths;
  final bool ispush;
  final double radi;
  const nextButtonTrans(
      {super.key,
      required this.buttonText,
      required this.navigator,
      required this.buttonColor,
      required this.heights,
      required this.widths,
      required this.radi,
      required this.ispush});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heights, //44
      width: widths, // 121
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              elevation: 0,
              primary: buttonColor,
              backgroundColor: buttonColor,
              side: BorderSide(width: 5.0, color: buttonColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radi))),
          onPressed: () {
            ispush
                ? Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => navigator,
                        transitionDuration: Duration(seconds: 0),
                        transitionsBuilder: (_, a, __, c) =>
                            FadeTransition(opacity: a, child: c)))
                : Navigator.pop(context);
          },
          child:
              Text(buttonText, style: button1(color: Colors.yellow, size: 20))),
    );
  }
}

class navi extends StatelessWidget {
  const navi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class backArrowTrans extends StatefulWidget {
  const backArrowTrans({super.key});

  @override
  State<backArrowTrans> createState() => _backArrowTransState();
}

class _backArrowTransState extends State<backArrowTrans> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        padding: EdgeInsets.zero,
        icon: Icon(Icons.arrow_back_ios, color: Colors.transparent),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}

class backArrow extends StatefulWidget {
  const backArrow({super.key});

  @override
  State<backArrow> createState() => _backArrowState();
}

class _backArrowState extends State<backArrow> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        padding: EdgeInsets.zero,
        icon: Icon(Icons.arrow_back_ios, color: text),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}

class backNavi extends StatelessWidget {
  final Widget navigator;
  final Color colors;

  const backNavi({super.key, required this.navigator, required this.colors});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        padding: EdgeInsets.zero,
        icon: Icon(Icons.arrow_back_ios, color: colors),
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (_, __, ___) => navigator,
                transitionDuration: Duration(seconds: 0),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c)),
          );
        });
  }
}
