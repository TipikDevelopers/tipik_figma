import 'package:flutter/material.dart';
import 'package:tipik_figma/mainPage/NewsList.dart';
import 'package:tipik_figma/mainPage/comments.dart';
import '../creditCard/cardScreen.dart';
import '../model/Comment.dart';
import '../model/News.dart';
import '../model/Transactions.dart';
import './TransactionList.dart';
import '../haberler/haberler.dart';
import 'NavBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
    List<Comment> comments = [
      Comment(
          time: DateTime.now(),
          address:
              "https://upload-isinolsun-com.mncdn.com/company/2022/9/18/532372420220918014014309.jpg",
          //"https://www.egmo.org/people/person92/photo3.jpg",
          companyName: "Bluejay",
          location: "Ankara/Çankaya",
          rating: 3),
      Comment(
          time: DateTime.now(),
          location: "Ankara/Çankaya",
          address:
              "https://lh5.googleusercontent.com/p/AF1QipPlnu4X5V3X_jVQc50KUWx8xRohUlRcTl1GgX1T",
          companyName: "Aspava",
          rating: 4)
    ];
    List<News> newsList = [
      News(
          title: "Geçmiş Olsun Türkiye",
          urlImage:
              "https://www.wpdurum.com/uploads/thumbs/milli-yas-kardelen-resmi.jpg",
          description: "Gelirlerimizi 1 ay boyunca bağışlayacağız"),
      News(
          title: "AFAD & ahbap",
          urlImage:
              "https://www.cumhuriyet.com.tr/Archive/2023/2/6/103012133-thumbsbcf9dd53875d50c944a1fde.jpg",
          description:
              "Her bahşiş ve bağış etiketine AFAD ve ahpab'a bağış seçeneği ekledik"),
      News(
          title: "Yunanistan Tren Kazası",
          urlImage:
              "https://static.euronews.com/articles/stories/07/43/46/88/320x180_cmsv2_2fc4fd76-ea6b-5001-9076-faf85d3b8329-7434688.jpg"),
      News(
          title: "Altılı Masa'da Ayrılık!",
          urlImage:
              "https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1998000/1999305_2.jpg")
    ];
    List<Transaction> transactionList = [
      Transaction(
          companyName: "Aspava",
          amount: 15,
          date: DateTime.now(),
          cardNoDigits: 40,
          imgURL:
              "https://lh5.googleusercontent.com/p/AF1QipPlnu4X5V3X_jVQc50KUWx8xRohUlRcTl1GgX1T"),
      Transaction(
          companyName: "Blue Jay",
          amount: 22,
          date: DateTime.now(),
          cardNoDigits: 40,
          imgURL:
              "https://upload-isinolsun-com.mncdn.com/company/2022/9/18/532372420220918014014309.jpg")
    ];
    return Scaffold(
      drawer: NavBar(
        commentList: comments,
        newsList: newsList,
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
          height: MediaQuery.of(context).size.height - 2,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                    top: -50,
                    left: -45,
                    child: Container(
                      height: 230,
                      width: 480,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(220),
                            bottomRight: Radius.circular(220)),
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
                    AppBar(
                      //leading: Icon(Icons.menu_rounded),

                      centerTitle: true,
                      title: const Text(
                        "Merhaba, Arda",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w300),
                      ),
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          cardScreen(cardList: const [])));
                            },
                            icon: const Icon(
                              Icons.credit_card_rounded,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    // Kartlarım yazısı düzelt!!!!!!!!!!!!!!!!!!!!
                    Container(
                      padding: EdgeInsets.only(top: 1),
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Kartlarım",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "Manrope",
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      width: double.infinity,
                      child: const Text(
                        "172,50 ₺",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: 'Poppins Bold',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Text(
                      "Bu ay bağışladınız",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Comfortaa'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Değerlendirmeleriniz",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Comfortaa'),
                          ),
                          TextButton(
                              onPressed: () => {
                                    showModalBottomSheet<void>(
                                        context: context,
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(40.0),
                                          ),
                                        ),
                                        builder: (BuildContext context) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.90,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Stack(
                                                    alignment: Alignment.center,
                                                    children: <Widget>[
                                                      Positioned(
                                                          child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                        child: Stack(
                                                          children: [
                                                            SizedBox(
                                                              height: 320,
                                                              child:
                                                                  Image.network(
                                                                'https://lh3.googleusercontent.com/p/AF1QipP8TXQ7fbGd5fzpDUmgCs0JM1ML3Q3x5xjQFc8Z=s1360-w1360-h1020',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Positioned.fill(
                                                              child:
                                                                  DecoratedBox(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  gradient:
                                                                      LinearGradient(
                                                                    begin: Alignment
                                                                        .topCenter,
                                                                    end: Alignment
                                                                        .bottomCenter,
                                                                    colors: [
                                                                      Colors
                                                                          .transparent,
                                                                      Colors
                                                                          .black
                                                                          .withOpacity(
                                                                              1),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )),
                                                      Positioned(
                                                        top: 60,
                                                        child: Column(
                                                          children: <Widget>[
                                                            const CircleAvatar(
                                                              radius:
                                                                  50, // set the radius of the circle
                                                              backgroundImage:
                                                                  NetworkImage(
                                                                      'https://pbs.twimg.com/media/FRM4vdsWYAQojQq?format=png&name=900x900'), // replace with the URL of your image
                                                            ),
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 10,
                                                                left: 40,
                                                                right: 40,
                                                              ),
                                                              child: const Text(
                                                                'Bilkent \nYork',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        45,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin:
                                                                  const EdgeInsets
                                                                      .only(
                                                                left: 40,
                                                                right: 40,
                                                              ),
                                                              child: const Text(
                                                                'Ankara/Çankaya',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Quicksand',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ]),
                                                SizedBox(height: 10),
                                                //SleekCircularSlider(),
                                                /*Container(
                                                  margin: const EdgeInsets.only(
                                                    left: 40,
                                                    right: 40,
                                                  ),
                                                  child: const Text(
                                                    '5',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Poppins Bold',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 50),
                                                  ),
                                                ),*/
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          );
                                        })
                                  }, //TODO
                              child: const Text(
                                "Hepsini Gör",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(243, 115, 53, 1),
                                    fontFamily: 'Comfortaa'),
                              ))
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 0),
                        width: MediaQuery.of(context).size.width - 2,
                        child: CommentWidget(comments)),
                    Container(
                        margin: const EdgeInsets.only(
                            bottom: 0, top: 20, left: 15, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Haberler & Kampanyalar",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Comfortaa'),
                            ),
                            TextButton(
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Habers(newsList: newsList))),
                                child: const Text(
                                  "Hepsini Gör",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(243, 115, 53, 1),
                                      fontFamily: 'Comfortaa'),
                                ))
                          ],
                        )),
                    SizedBox(
                      height: 210,
                      child: NewsList(newsList: newsList),
                    ),
                    SizedBox(height: 25),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 0, top: 0, left: 15, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Son İşlemleriniz",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Comfortaa'),
                          ),
                          TextButton(
                              onPressed: () {}, //TODO
                              child: const Text(
                                "Hepsini Gör",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(243, 115, 53, 1),
                                    fontFamily: 'Comfortaa'),
                              ))
                        ],
                      ),
                    ),

                    TransactionInfo(transactionList: transactionList)
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
