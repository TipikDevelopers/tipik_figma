import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: Container());
  }
}
