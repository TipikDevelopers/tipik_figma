import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/Core/AuthManager.dart';

import '../login_screen.dart';

class TextAnimated extends StatefulWidget {
  final String title;
  final bool isFirst, isLast;
  final String description;
  const TextAnimated(
      {Key? key,
      required this.title,
      required this.description,
      required this.isFirst,
      required this.isLast})
      : super(key: key);
  @override
  State<TextAnimated> createState() => TextAnimatedState();
}

class TextAnimatedState extends State<TextAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  void startAnimation() {
    _animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _opacityAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);
    if (widget.isFirst) {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: Column(
            children: [
              Text(widget.title,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontFamily: "Comfortaa", fontSize: 27)),
              Text(
                widget.description,
                style: const TextStyle(fontFamily: "Quicksand", fontSize: 15),
                textAlign: TextAlign.center,
              ),
              if (widget.isLast)
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        //context.read<AuthManager>().setInitial();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(243, 115, 53, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: const Icon(Icons.arrow_forward)),
                )
            ],
          ),
        );
      },
    );
  }
}
