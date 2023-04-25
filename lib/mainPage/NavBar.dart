import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/Core/AuthManager.dart';
import 'package:tipik_figma/degerlendirmeler/degerlendirmeler.dart';
import 'package:tipik_figma/model/Comment.dart';
import 'package:tipik_figma/model/News.dart';
import 'package:tipik_figma/yard%C4%B1m/yardim.dart';
import '../creditCard/cardScreen.dart';
import '../login/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../haberler/haberler.dart';

class NavBar extends StatelessWidget {
  final List<Comment> commentList;
  final List<News> newsList;
  const NavBar({required this.commentList, required this.newsList});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(60.0),
        bottomRight: Radius.circular(60.0),
      ),
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 173, 51, 1),
        child: ListView(
          padding: EdgeInsets.only(top: 50, left: 10),
          children: [
            Row(
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/images/tipik.svg',
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                //margin: EdgeInsets.only(bottom: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Arda Okyay",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "+90 5396635403",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.asset('assets/images/kartlar.svg'),
              // minVerticalPadding: 0,

              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Kartlarım",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => cardScreen(
                              cardList: const [],
                            )));
              },
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.asset('assets/images/ayarlar.svg'),
              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Ayarlar",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onTap: () {}, //TODO
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => yardim()));
              },
              leading: SvgPicture.asset('assets/images/Yardım.svg'),
              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Yardım",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Deger.svg'),
              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Değerlendirmeler",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => degerlendirmeler(
                              commentList: commentList,
                            )));
              },
              trailing: Container(
                // margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 7,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                //color: const Color.fromRGBO(118, 177, 145, 1),
                width: 40 / 390 * screenWidth,
                height: 28 / 844 * screenHeight,
                child: Text(
                  "1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Karla',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(212, 169, 103, 1),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/News.svg'),
              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Haberler/Kampanyalar",
                //textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Habers(newsList: newsList))),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Islemler.svg'),
              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Tüm İşlemlerim",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onTap: () => {}, //TODO
            ),
            const SizedBox(
              height: 80,
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.asset('assets/images/Cikis.svg'),
              minLeadingWidth: 5,
              horizontalTitleGap: 12,
              title: const Text(
                "Çıkış Yap",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 27,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onTap: () {
                context.read<AuthManager>().deleteToken();
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
