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
  List<Widget> cardList = [
    CreditCard(
      color: Color.fromRGBO(118, 177, 135, 1),
      cardName: "  Ziraat Gold",
    ),
    CreditCard(color: Colors.red, cardName: "  İş Bankası"),
    CreditCard(
      color: Colors.blue,
      cardName: "  Maximum",
    ),
  ];
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
            margin: EdgeInsets.only(top: 50),
            width: screenWidth,
            height: 200,
            child: Swiper(
              itemWidth: screenWidth - 30,
              itemBuilder: (BuildContext context, int index) {
                return cardList[index];
              },
              itemCount: cardList.length,
              viewportFraction: 0.7,
              scale: 0.5,
            )));
  }
}

class CreditCard extends StatelessWidget {
  final Color color;
  final String cardName;

  const CreditCard({Key? key, required this.color, required this.cardName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //BURAYA TEXTVIEWLAR VS DE EKLENEBİLİR, BÖYLECE HER KART İÇİN İNPUT GİRME KISMI AÇILIR
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          // Add your child widget here
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 45,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  cardName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
