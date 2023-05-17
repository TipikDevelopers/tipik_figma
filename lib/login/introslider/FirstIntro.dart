import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/Core/AuthManager.dart';
import '../login_screen.dart';
import './AnimatedTexts.dart';

class Page {
  String assetImage;
  String title;
  String description;
  Page(
      {required this.assetImage,
      required this.description,
      required this.title});
}

class SliderIntro extends StatefulWidget {
  SliderIntro({super.key});

  @override
  State<SliderIntro> createState() => _SliderIntroState();
}

class _SliderIntroState extends State<SliderIntro> {
  final List<Page> pageList = [
    Page(
        assetImage: "assets/images/IntroSlider1.png",
        description:
            "Tipik, telefonunuzla bahşiş bırakabilmenizi, bağış yapabilmenizi kolaylaştıran bir uygulamadır.",
        title: "Tipik Nedir?"),
    Page(
        assetImage: "assets/images/IntroSlider2.png",
        description:
            "Telefonunuzu bir Tipik Tag’ine dokundurarak ödeme yapabilirsiniz.",
        title: "Temassız Bir Şekilde"),
    Page(
        assetImage: "assets/images/IntroSlider3.png",
        title: "Memnuniyetini Göster",
        description:
            "Hizmetten ne kadar memnun kaldığını bahşiş ile beraber yorum yaparak göster."),
    Page(
        assetImage: "assets/images/IntroSlider4.png",
        description:
            "Müzisyene, resmi kurumlara, bağış kutularına Tipik ile bağış da yapabilirsin.",
        title: "Bağış Yap"),
    Page(
        assetImage: "assets/images/IntroSlider5.png",
        description:
            "Tipik, etiketi gördüğün her yerden kullanılabilir. Haydi devam edelim!",
        title: "Gördüğün Her Yerde")
  ];
  @override
  Widget build(BuildContext context) {
    List<GlobalKey<TextAnimatedState>> keys =
        List<GlobalKey<TextAnimatedState>>.generate(
            pageList.length, (index) => GlobalKey<TextAnimatedState>());

    final PageController controller =
        PageController(initialPage: 0, keepPage: true, viewportFraction: 0.75);
    return Scaffold(
        body: PageView.builder(
      onPageChanged: (int index) {
        keys[index].currentState!.startAnimation();
      },
      controller: controller,
      itemCount: pageList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(pageList[index].assetImage),
              const SizedBox(
                height: 10,
              ),
              TextAnimated(
                title: pageList[index].title,
                description: pageList[index].description,
                isFirst: index == 0,
                key: keys[index],
                isLast: index == pageList.length - 1,
              )
            ],
          ),
        );
      },
    ));
  }
}
