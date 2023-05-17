import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularSlider extends StatelessWidget {
  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(
        size: 200,
        startAngle: 165,
        angleRange: 209.88,
        //spinnerMode: true,
        customWidths: CustomSliderWidths(
            progressBarWidth: 20, trackWidth: 15, handlerSize: 8),
        customColors: CustomSliderColors(
          hideShadow: true,
          dynamicGradient: true,
          trackColor: Color.fromRGBO(219, 219, 219, 1),
          progressBarColors: [
            Color.fromRGBO(17, 153, 142, 1),
            Color.fromRGBO(56, 239, 125, 1)
          ],

          //progressBarColor: Color.fromRGBO(118, 177, 145, 1)
        ),
        infoProperties: InfoProperties(
          mainLabelStyle: TextStyle(
            // textBaseline: TextBaseline.alphabetic,
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
    innerWidget: (percentage) {
      return Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment,
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              //color: Colors.blueGrey,
              padding: EdgeInsets.all(0),
              height: 37,
              child: Text(
                '₺',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              //color: Colors.red,
              height: 68,
              alignment: Alignment.center,
              padding: EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${percentage.toInt()}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: percentage.toInt() < 10 ? 70 : 60,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    ',00',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                    // textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: Text(
                "Bahşiş Miktarı",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      );
    },
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

class ProviderSlider with ChangeNotifier {
  int value = 0;

  void setValue(int newValue) {
    value = newValue;
    notifyListeners();
  }

  int getValue() {
    return value;
  }
}
