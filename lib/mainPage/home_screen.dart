import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tipik_figma/mainPage/NewsList.dart';
import 'package:tipik_figma/mainPage/comments.dart';
import '../model/Comment.dart';
import '../model/News.dart';
import '../model/Transactions.dart';
import './TransactionList.dart';
import './comments.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
    List<Comment> comments = [
      Comment(
          address:
              "https://upload-isinolsun-com.mncdn.com/company/2022/9/18/532372420220918014014309.jpg",
          companyName: "BlueJay",
          rating: 3),
      Comment(
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
      Transaction(companyName: "Aspava", amount: 15, date: DateTime.now(), cardNoDigits: 40,
      imgURL: "https://lh5.googleusercontent.com/p/AF1QipPlnu4X5V3X_jVQc50KUWx8xRohUlRcTl1GgX1T"
      ),
      Transaction(companyName: "Blue Jay", amount: 22, date: DateTime.now(), cardNoDigits: 40, 
      imgURL: "https://upload-isinolsun-com.mncdn.com/company/2022/9/18/532372420220918014014309.jpg")
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height-2,
        child: SingleChildScrollView(
          child:Stack(
          children: [
            Positioned(
                top: -50,
                left: -45,
                child: Container(
                  height: 230,
                  width: 480,
                  decoration: BoxDecoration(
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
                  leading: Icon(Icons.menu_rounded),
                  centerTitle: true,
                  actions: [
                    IconButton(onPressed: null, icon:Icon(Icons.credit_card_rounded, color: Colors.white,))
                  ],
                  title: Text("Merhaba Arda"),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(
                  height: 33,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  child: Text(
                    "172,50 TL",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Bu ay bağışladınız",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Değerlendirmeleriniz",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                          onPressed: () => print("Tuna is the best"),
                          child: Text(
                            "Hepsini Gör",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(243, 115, 53, 1)),
                          ))
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 0),
                    width: MediaQuery.of(context).size.width - 2,
                    child: CommentWidget(comments)),
                Container(
                    margin: EdgeInsets.only(
                        bottom: 0, top: 0, left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Haberler & Kampanyalar",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () => print("Tuna is the best"),
                            child: Text(
                              "Hepsini Gör",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(243, 115, 53, 1)),
                            ))
                      ],
                    )),
                Container(
                  child: NewsList(newsList: newsList),
                  height: 210,
                ),
                Container(
                    margin: EdgeInsets.only(
                        bottom: 0, top: 0, left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Son İşlemleriniz",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () => print("Tuna is the best"),
                            child: Text(
                              "Hepsini Gör",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(243, 115, 53, 1)),
                            ))
                      ],
                    )),
                    TransactionInfo(transactionList: transactionList)
              ],
            ),
          ],
        ),)
      ),
    );
  }
}
