import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class telLogin extends StatelessWidget {
  const telLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(
          height: 350,
          width: 350,
          child: Image.asset("assets/images/LoginLogo.png"),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: const Text("Hoşgeldin",style: TextStyle(fontFamily: "Comfortaa",fontSize: 32),),
        ),
        Text("Devam etmek için telefon numaranı gir.")
      ]),

    );
  }
}