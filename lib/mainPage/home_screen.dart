import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tipik_figma/mainPage/NewsList.dart';
import 'package:tipik_figma/mainPage/comments.dart';
import '../creditCard/cardScreen.dart';
import '../creditCard/myCards.dart';
import '../model/Comment.dart';
import '../model/News.dart';
import '../model/Transactions.dart';
import '../nfcTagPage/CircularSlider.dart';
import './TransactionList.dart';
import '../haberler/haberler.dart';
import 'NavBar.dart';
//import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final hasCards = false;
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
          location: "Çankaya / Ankara",
          amount: 15,
          date: DateTime.now(),
          cardNoDigits: 40,
          imgURL:
              "https://lh3.googleusercontent.com/p/AF1QipMrnDmt3S5rut1SmIsuoz_vHXzwVjiJIXjZlliI=w1080-h608-p-no-v0"),
      Transaction(
          companyName: "Blue Jay",
          location: "Çankaya / Ankara",
          amount: 22,
          date: DateTime.now(),
          cardNoDigits: 40,
          imgURL:
              "https://mekanlar.com/img/img177/59792274ebd800dac43e41fdc9441bdf721a68e2_plc_1f87cee2e874554b571ff50fc5858513.jpg")
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
                  top: -screenHeight / 6,
                  left: -screenWidth / 10.3,
                  child: SvgPicture.asset(
                    "assets/images/Ellipse.svg",
                    width: size.aspectRatio * size.height * 570 / 390,
                    height: size.aspectRatio * size.height * (330 / 432),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: screenHeight / 45,
                  ),
                  child: Column(
                    children: [
                      AppBar(
                        //leading: Icon(Icons.menu_rounded),
                        toolbarHeight: screenHeight / 20,

                        centerTitle: true,
                        title: Container(
                          padding: EdgeInsets.only(top: 10),
                          child: const Text(
                            "Merhaba, Arda",
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        actions: [
                          SizedBox(
                            height: screenHeight / 35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screenHeight / 42,
                                  width: screenWidth / 19,
                                  child: IconButton(
                                      padding: const EdgeInsets.all(0),
                                      iconSize: 20,
                                      onPressed: () {
                                        //Öykü değiştirdi, kart durumuna göre gidilecek rotayı belirliyor.
                                        if (hasCards) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      cardScreen(
                                                          cardList: const [])));
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => MyCards(
                                                      cardList: const [])));
                                        }
                                      },
                                      icon: const Icon(
                                          Icons.credit_card_rounded,
                                          color: Colors.white,
                                          size: 20)),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(right: 10),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Kartlarım yazısı düzelt!!!!!!!!!!!!!!!!!!!
                      SizedBox(
                        height: screenHeight / 45,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            width: double.infinity,
                            child: const Text(
                              "172,50 ₺",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: 'Poppins Bold',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.only(top: ),
                            child: const Text(
                              "Bu Ay Bağışladınız",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Comfortaa'),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            right: 10, left: 15, top: 5, bottom: 5),
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
                                                      clipBehavior: Clip.none,
                                                      alignment:
                                                          Alignment.center,
                                                      children: <Widget>[
                                                        Positioned(
                                                            child: ClipRRect(
                                                          borderRadius: const BorderRadius
                                                                  .only(
                                                              topLeft: Radius
                                                                  .circular(40),
                                                              topRight: Radius
                                                                  .circular(40),
                                                              bottomLeft: Radius
                                                                  .circular(90),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          90)),
                                                          child: Stack(
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Container(
                                                                height:
                                                                    screenHeight *
                                                                        450 /
                                                                        844,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: NetworkImage(
                                                                        'https://lh3.googleusercontent.com/p/AF1QipP8TXQ7fbGd5fzpDUmgCs0JM1ML3Q3x5xjQFc8Z=s1360-w1360-h1020'),
                                                                  ),
                                                                  borderRadius: BorderRadius.only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              90),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              90)),
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
                                                                            .withOpacity(1),
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
                                                                child:
                                                                    const Text(
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
                                                                child:
                                                                    const Text(
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
                                                        Positioned(
                                                            top: 330,
                                                            left: 100,
                                                            child:
                                                                CircularSlider()),
                                                      ]),

                                                  // const SizedBox(height: 10),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 130),
                                                    child: Center(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .star_border_rounded,
                                                                size: 50,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        253,
                                                                        200,
                                                                        48,
                                                                        1),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border_rounded,
                                                                size: 50,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        253,
                                                                        200,
                                                                        48,
                                                                        1),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border_rounded,
                                                                size: 50,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        253,
                                                                        200,
                                                                        48,
                                                                        1),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border_rounded,
                                                                size: 50,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        253,
                                                                        200,
                                                                        48,
                                                                        1),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .star_border_rounded,
                                                                size: 50,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        253,
                                                                        200,
                                                                        48,
                                                                        1),
                                                              ),
                                                            ],
                                                          ),
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                "Yorum yapmak için dokunun",
                                                                style:
                                                                    TextStyle(
                                                                  fontFamily:
                                                                      'Quicksand',
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          118,
                                                                          118,
                                                                          118,
                                                                          1),
                                                                ),
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
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
                      const SizedBox(height: 25),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 0, top: 10, left: 15, right: 10),
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
                ),
              ],
            ),
          )),
    );
  }
}
