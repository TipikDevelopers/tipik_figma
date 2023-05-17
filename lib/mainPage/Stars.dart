import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Stars extends StatefulWidget {
  const Stars({super.key});

  @override
  State<Stars> createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  @override
  Widget build(BuildContext context) {
    bool first = false;
    bool second = false;
    bool third = false;
    bool forth = false;
    bool fifth = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          child: Container(
            height: 45,
            width: 45,
            child: first == true
                ? SvgPicture.asset("assets/images/Vectorstarbig.svg")
                : SvgPicture.asset("assets/images/VectorstarFilled.svg"),
          ),
          onTap: () {
            setState(() {
              print("mem");
              first = !first;
            });
          },
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          child: Container(
            height: 45,
            width: 45,
            child: SvgPicture.asset("assets/images/Vectorstarbig.svg"),
          ),
          onTap: () {
            setState(() {
              first = true;
              second = true;
            });
          },
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          child: Container(
            height: 45,
            width: 45,
            child: SvgPicture.asset("assets/images/Vectorstarbig.svg"),
          ),
          onTap: () {
            setState(() {
              first = true;
              second = true;
              third = true;
            });
          },
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          child: Container(
            height: 45,
            width: 45,
            child: SvgPicture.asset("assets/images/Vectorstarbig.svg"),
          ),
          onTap: () {
            setState(() {
              first = true;
              second = true;
              third = true;
              forth = true;
            });
          },
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          child: Container(
            height: 45,
            width: 45,
            child: SvgPicture.asset("assets/images/Vectorstarbig.svg"),
          ),
          onTap: () {
            first = true;
            second = true;
            third = true;
            forth = true;
            fifth = true;
          },
        ),
      ],
    );
  }
}
