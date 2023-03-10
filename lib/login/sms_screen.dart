import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SMSScreen extends StatefulWidget {
  final String phoneNum;
  const SMSScreen(this.phoneNum);

  @override
  State<SMSScreen> createState() => _SMSScreenState();
}

class _SMSScreenState extends State<SMSScreen> {
  bool isTimeOut = false;
  Timer? timer;
  Duration remaining = const Duration(minutes: 1, seconds: 30);
  //Timer methods
  @override
  void initState() {
    super.initState();
    setTimer();
  }

  @override
  void dispose() {
    super.dispose();
    stop();
  }

  void setTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
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
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: const  Color.fromRGBO(217, 217, 217, 1),
      border: Border.all(color:  const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  late final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(8),
  );

  late final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: const Color.fromRGBO(255, 255, 224, 1),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 80, bottom: 5),
            child: Text(
              widget.phoneNum,
              style:
                  const TextStyle(fontSize: 24, decoration: TextDecoration.underline),
            ),
          ),
          TextButton(
              onPressed: () => Navigator.pop(context),
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: const Text(
                "Numaramı değiştir",
                style: TextStyle(
                    fontSize: 15, decoration: TextDecoration.underline),
              )),
          Container(
            margin: const EdgeInsets.only(top: 50, bottom: 30),
            child: Pinput(
              length: 5,
              onCompleted: (value) => print(value),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
            ),
          ),
          const Center(
              child: Text(
            "Telefonuna gelen SMS kodunu doğrula.",
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          )),
          Center(
            child: Container(
              margin: const EdgeInsets.all(30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isTimeOut
                        ? const Icon(Icons.timer_off_outlined)
                        : const Icon(Icons.timer_outlined),
                    Text("${remaining.inMinutes}:${remaining.inSeconds.remainder(60)}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ]),
            ),
          )
        ],
      )),
    );
  }
}
