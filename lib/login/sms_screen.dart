import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SMSScreen extends StatefulWidget {
  String phoneNum;
  SMSScreen(this.phoneNum);

  @override
  State<SMSScreen> createState() => _SMSScreenState(phoneNum);
}

class _SMSScreenState extends State<SMSScreen> {
  bool isTimeOut = false;
  Timer? timer;
  Duration remaining = Duration(minutes: 1, seconds: 30);
  //Timer methods
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    stop();
  }

  void setTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      reduce();
    });
  }

  void reduce() {
    int seconds = remaining.inSeconds - 1;
    setState(() {
      if (seconds >= 0) {
        remaining = Duration(seconds: seconds);
      } else {
        stop();
      }
    });
  }

  void stop() {
    timer!.cancel();
    isTimeOut = true;
  }

  //Themes
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Color.fromRGBO(217, 217, 217, 1),
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  late final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(8),
  );

  late final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: Color.fromRGBO(255, 255, 224, 1),
    ),
  );

  String phoneNum;
  _SMSScreenState(this.phoneNum);
  @override
  // TODO: implement widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80, bottom: 5),
            child: Text(
              phoneNum,
              style:
                  TextStyle(fontSize: 24, decoration: TextDecoration.underline),
            ),
          ),
          TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: Text(
                "Numaramı değiştir",
                style: TextStyle(
                    fontSize: 15, decoration: TextDecoration.underline),
              )),
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 30),
            child: Pinput(
              length: 5,
              onCompleted: (value) => print(value),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
            ),
          ),
          Center(
              child: Text(
            "Telefonuna gelen SMS kodunu doğrula.",
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          )),
          Center(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isTimeOut
                        ? Icon(Icons.timer_off_outlined)
                        : Icon(Icons.timer_outlined),
                    Text("${remaining.inMinutes}:${remaining.inSeconds.remainder(60)}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ]),
            ),
          )
        ],
      )),
    );
  }
}
