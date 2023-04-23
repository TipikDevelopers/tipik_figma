import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/Core/AuthManager.dart';
import '../login_screen.dart';

class SliderIntro extends StatelessWidget {
  const SliderIntro({super.key});
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/IntroSlider1.png"),
              const Text("Tipik Nedir?",
              style: TextStyle(fontFamily: "Comfortaa", fontSize: 30)),
              const Text(
                  "Tipik, telefonunuzla bahşiş bırakabilmenizi, bağış yapabilmenizi kolaylaştıran bir uygulamadır.",
                  style: TextStyle(fontFamily: "Quicksand", fontSize: 20),
                  textAlign: TextAlign.center,)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/IntroSlider2.png"),
              const Text("Temassız Bir Şekilde",
              style: TextStyle(fontFamily: "Comfortaa", fontSize: 30)),
              const Text(
                  "Telefonunuzu bir Tipik Tag’ine dokundurarak ödeme yapabilirsiniz.",
                  style: TextStyle(fontFamily: "Quicksand", fontSize: 20),
                  textAlign: TextAlign.center,)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Image.asset("assets/images/IntroSlider3.png"),
              const Text("Memnuniyetini Göster",
              style: TextStyle(fontFamily: "Comfortaa", fontSize: 30)),
              const Text(
                  "Hizmetten ne kadar memnun kaldığını bahşiş ile beraber yorum yaparak göster.",
                  style: TextStyle(fontFamily: "Quicksand", fontSize: 20),
                  textAlign: TextAlign.center,
                  )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Image.asset("assets/images/IntroSlider4.png"),
              const Text("Memnuniyetini Göster",
              style: TextStyle(fontFamily: "Comfortaa", fontSize: 30)),
              const Text(
                  "Hizmetten ne kadar memnun kaldığını bahşiş ile beraber yorum yaparak göster.",
                  style: TextStyle(fontFamily: "Quicksand", fontSize: 20),
                  textAlign: TextAlign.center,
                  )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Image.asset("assets/images/IntroSlider5.png"),
              const Text("Memnuniyetini Göster",
              style: TextStyle(fontFamily: "Comfortaa", fontSize: 30)),
              const Text(
                  "Hizmetten ne kadar memnun kaldığını bahşiş ile beraber yorum yaparak göster.",
                  style: TextStyle(fontFamily: "Quicksand", fontSize: 20),
                  textAlign: TextAlign.center,
                  ),
              ElevatedButton(onPressed: () {
                //context.read<AuthManager>().setInitial();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
              },style: ElevatedButton.styleFrom(backgroundColor: const Color(0x00f37335)), child: const Icon(Icons.arrow_forward),)
            ],
          ),
        ],
      ),
    );
  }
}
