import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularSlider extends StatelessWidget {
  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(),
    initialValue: 5,
    onChange: (double value) {
      print(value);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        slider,
      ],
    );
  }
}
