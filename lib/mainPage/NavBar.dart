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
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Arda Okyay",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text(
                "+90 5396635403",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: SizedBox(
                child: SvgPicture.asset(
                  'assets/images/tipik.svg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 173, 51, 1),
                /*image: DecorationImage(
                  fit: BoxFit.fill,
                  image: SvgPicture.asset('assets/images/tipik.svg'),
                ),*/
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/kartlar.svg'),
              title: const Text(
                "Kartlarım",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
              title: const Text(
                "Ayarlar",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
              title: const Text(
                "Yardım",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Deger.svg'),
              title: const Text(
                "Değerlendirmeler",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
              trailing: ClipOval(
                child: Container(
                  color: Colors.white,
                  width: 20,
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
              title: const Text(
                "Haberler/Kampanyalar",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Habers(newsList: newsList))),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Islemler.svg'),
              title: const Text(
                "Tüm İşlemlerim",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {}, //TODO
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.asset('assets/images/Cikis.svg'),
              title: const Text(
                "Çıkış Yap",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
