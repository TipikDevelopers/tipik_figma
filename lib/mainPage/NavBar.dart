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
                  fontSize: 24,
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
                  fontSize: 20,
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
                  fontSize: 20,
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
                  fontSize: 20,
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
              trailing: ClipRect(
                child: Container(
                  color: Colors.white,
                  width: 30,
                  height: 20,
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 173, 51, 1),
                        fontSize: 12,
                      ),
                    ),
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
                  fontSize: 20,
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
                  fontSize: 20,
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
                  fontSize: 28,
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
