import 'package:flutter/material.dart';
import '../creditCard/cardScreen.dart';
import '../login/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/src/painting/border_radius.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
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
        backgroundColor: Color.fromRGBO(253, 200, 48, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Arda Okyay",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "+90 5396635403",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: Container(
                child: SvgPicture.asset(
                  'assets/images/tipik.svg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(253, 200, 48, 1),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('assets/images/tipik.svg'),
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/kartlar.svg'),
              title: Text(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cardScreen()));
              },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.asset('assets/images/ayarlar.svg'),
              title: Text(
                "Ayarlar",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Yardım.svg'),
              title: Text(
                "Yardım",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Deger.svg'),
              title: Text(
                "Değerlendirmeler",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => null,
              trailing: ClipOval(
                child: Container(
                  color: Colors.white,
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Color.fromRGBO(234, 115, 53, 1),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/News.svg'),
              title: Text(
                "Haberler/Kampanyalar",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: SvgPicture.asset('assets/images/Islemler.svg'),
              title: Text(
                "Tüm İşlemlerim",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => null,
            ),
            SizedBox(
              height: 50,
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: SvgPicture.asset('assets/images/Cikis.svg'),
              title: Text(
                "Çıkış Yap",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
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
