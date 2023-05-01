import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tipik_figma/login/introslider/FirstIntro.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    double centerX = MediaQuery.of(context).size.width/2;
    double centerY = MediaQuery.of(context).size.height/2;
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
            Color.fromRGBO(255, 131, 0, 1),
              Color(0xFFFDC730)
          ])
        ),
        child: Stack(children:[
          Center(
            child:SizedBox(
              width: 350,
              height: 350,
              child: Container(decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(243, 115, 53, 0.25)
              ),))
          ),
          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(shape: BoxShape.circle,
            color: Color.fromRGBO(255, 206, 114,0.25)
            ),),
          ),
          Center(
            child: Container(
            width: 200,
            height:200,
            decoration: const BoxDecoration(shape: BoxShape.circle,
            color: Color(0xFFFFDC5C)
            ),),
          ),
          Center(
            child: SizedBox(
              width: 140,
              height: 140,
              child: SvgPicture.asset("assets/images/LogoTipik.svg")),
          ),
          Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              const SizedBox(height: 75,),
              const Text("Bahşişin en kolay yolu", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontFamily: "Comfortaa",color:Colors.white),),
              const SizedBox(height: 10,),
              const Text("tipik", style: TextStyle(fontSize: 64,fontFamily: "Varela Round",color: Colors.white),),
              const SizedBox(height: 400,),
              const Text("Merhaba!",style: TextStyle(fontFamily: "Comfortaa",fontSize: 36,color: Colors.white),),
              const SizedBox(height: 70,),
              Container(
                width: 310,
                height: 50,
                child: ElevatedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return SliderIntro();
                },)) , 
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ), child: const Text("Başla",style: TextStyle(fontFamily: "Comfortaa",fontSize: 32),),),
              )
              ]
                  ),
          ) ,]))
    );
  }
}