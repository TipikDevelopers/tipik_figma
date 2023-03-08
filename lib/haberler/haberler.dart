import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tipik_figma/haberler/haberList.dart';
import '../model/News.dart';

class Habers extends StatelessWidget {
  List<News> newsList;
  Habers({required this.newsList});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            color: Colors.white,
            icon: Image.asset('assets/images/geri.svg'),
          ),
          title: Text(
            'Haberler ve Kampanyalar',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
              fontSize: 24,
            ),
          ),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(253, 200, 48, 1),
                  Color.fromRGBO(234, 115, 53, 1)
                ]),
          )),
          elevation: 0, //shadow
          centerTitle: true,
        ),
      body: Column(
        children: [HaberList(newsList: newsList)],
      ),
    );
  }
}
