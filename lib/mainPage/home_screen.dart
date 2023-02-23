import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(leading:Icon(Icons.menu_rounded),
      centerTitle: true,title: Text("Merhaba Arda"),
      elevation: 0,backgroundColor: Colors.transparent,
      
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                  top: -50,
                  left: -25,
                  child: Container(
                    height: 280,
                    width: 440,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(220),
                        bottomRight: Radius.circular(220)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(253, 200, 48, 1),
                          Color.fromRGBO(234, 115, 53, 1)
                        ],
                      ),
                       ),
                  )),
                  Column(
                    children: [
                      SizedBox(height: 125,),
                      Container(
                        margin: EdgeInsets.only(bottom:10),
                        width: double.infinity,
                        child: Text("172,50 TL",style: TextStyle(fontSize: 25,color: Colors.white,),textAlign: TextAlign.center,),
                      ),
                      Text("Bu ay bağışladınız",style: TextStyle(color: Colors.white,fontSize: 12),),
                      SizedBox(height: 55,),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Değerlendirmeleriniz",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        TextButton(onPressed: ()=>print("Tuna is the best"), child: Text("Hepsini Gör",style: TextStyle(fontSize: 12,color: Color.fromRGBO(243,115,53,1)),))
                                    ],
                                  ),
                      )
                    ],
                  )
            ],
             ),
        ],
      ),
    );
  }
}
