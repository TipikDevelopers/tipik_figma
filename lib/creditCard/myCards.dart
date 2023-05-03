import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class MyCards extends StatefulWidget {
  List<int> cardList;
  MyCards({required this.cardList});
  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              color: Colors.black,
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            toolbarHeight: 70.0,
            title: Text(
              'tipik',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontFamily: 'Varela Round'),
            ),
            backgroundColor: Colors.white,
            elevation: 0, //shadow
            centerTitle: true,
          ),
        ),
        body: Container(
            child: Swiper(
          itemHeight: 30,
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              "http://via.placeholder.com/288x188",
            );
          },
          itemCount: 10,
          viewportFraction: 0.8,
          scale: 0.9,
        )));
  }
}
