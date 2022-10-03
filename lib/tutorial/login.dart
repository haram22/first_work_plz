import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:my_work_plz/theme/color.dart';
import 'package:my_work_plz/tutorial/profile.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  loginPageState createState() {
    return loginPageState();
  }
}

class loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();

  String? inputtedValue;
  bool userInteracts() => inputtedValue != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 71, bottom: 99.91),
                child: SizedBox(
                    width: 152.49,
                    height: 161.09,
                    child: Image.asset('assets/logo_account.png')),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 54, right: 58, bottom: 14),
                child: TextFormField(
                    autofocus: true,
                    cursorColor: text,
                    style: subtitle1(color: text),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: pants),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: pants, width: 1.0)),
                        filled: true,
                        fillColor: white,
                        hintText: "이메일",
                        hintStyle: TextStyle(color: pants)),
                    keyboardType: TextInputType.emailAddress)),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 58),
              child: TextFormField(
                  cursorColor: text,
                  autofocus: true,
                  keyboardAppearance: Brightness.dark,
                  obscureText: true,
                  obscuringCharacter: '●',
                  style: TextStyle(color: text, letterSpacing: 0),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: pants)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: pants, width: 1.0)),
                      filled: true,
                      fillColor: white,
                      hintText: "비밀번호",
                      hintStyle: TextStyle(color: pants)),
                  validator: (value) {
                    if (inputtedValue != null &&
                        (value == null || value.isEmpty)) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (value) => setState(() => inputtedValue = value)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 146, right: 147, top: 205),
              child: SizedBox(
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Main,
                    side: BorderSide(width: 5.0, color: Colors.transparent),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                  onPressed: !userInteracts() ||
                          _formKey.currentState == null ||
                          !_formKey.currentState!.validate()
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => profile(),
                                transitionDuration: Duration(seconds: 0),
                                transitionsBuilder: (_, a, __, c) =>
                                    FadeTransition(opacity: a, child: c)),
                          );
                        },
                  child:
                      const Text('로그인', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
