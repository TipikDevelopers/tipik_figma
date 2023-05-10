import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularSlider extends StatelessWidget {
  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
        size: 200,
        //startAngle: 0,
        //angleRange: 180,
        //spinnerMode: true,
        customWidths: CustomSliderWidths(
            progressBarWidth: 20, trackWidth: 15, handlerSize: 8),
        customColors: CustomSliderColors(
          trackColor: Color.fromRGBO(219, 219, 219, 1),
          progressBarColors: [
            Color.fromRGBO(56, 239, 125, 1),
            Color.fromRGBO(17, 153, 142, 1)
          ],

          //progressBarColor: Color.fromRGBO(118, 177, 145, 1)
        ),
        infoProperties: InfoProperties(
          mainLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
          topLabelText: "₺",
          topLabelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 48,
          ),
          bottomLabelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Comfortaa',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          bottomLabelText: "Bahşiş Miktarı",
        )),
    initialValue: 5,
    onChange: (double value) {
      print(value);
    },
    min: 0,
    max: 200,
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
