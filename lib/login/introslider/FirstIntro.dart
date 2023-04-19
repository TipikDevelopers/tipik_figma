import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/Core/AuthManager.dart';
import 'package:tipik_figma/login/login_screen.dart';
import 'package:intro_slider/intro_slider.dart';

class SliderIntro extends StatefulWidget {
  SliderIntro({super.key});

  @override
  State<SliderIntro> createState() => _SliderIntroState();
}

class _SliderIntroState extends State<SliderIntro> {
  final List<String> imagePaths = [
    'assets/images/tipik.svg',
    'assets/images/tipik.svg'
  ];

  final List<String> description = [
    "Tipik, telefonunuzla bahşiş bırakabilmenizi, bağış yapabilmenizi kolaylaştıran bir uygulamadır.",
    "Telefonunuzu bir Tipik Tag’ine dokundurarak ödeme yapabilirsiniz.",
  ];

  final List<String> title = ["Tipik Nedir?", "Temassız Bir Şekilde"];

  late List<ContentConfig> slides;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = [];
    for (int i = 0; i < title.length; i++) {
      slides.add(ContentConfig(
          title: title[i],
          description: description[i],
          pathImage: imagePaths[i],
          widthImage: 296,
          heightImage: 496,
          styleDescription:
              const TextStyle(fontSize: 20, fontFamily: "Quicksand"),
          styleTitle: const TextStyle(fontSize: 30, fontFamily: 'Comfortaa')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      listContentConfig: slides,
      isShowNextBtn: false,
      scrollPhysics: const BouncingScrollPhysics(),
      renderDoneBtn: ElevatedButton(
        onPressed: () {
          context.read<AuthManager>().setInitial();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: const Icon(Icons.arrow_forward),
      ),
      indicatorConfig: const IndicatorConfig(isShowIndicator: true),
    );
  }
}
