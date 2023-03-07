import 'package:flutter/material.dart';
import '../creditCard/cardScreen.dart';
import '../login/login_screen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  //'elif.jpg', TODO: solve the issue here image below will temporarily fill the blank
                  'https://www.clipartmax.com/png/middle/257-2572603_user-man-social-avatar-profile-icon-man-avatar-in-circle.png',
                  fit: BoxFit.cover,
                  scale: 1,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 200, 48, 1),
              //image: DecorationImage(
              //fit: BoxFit.fill,
              //image: NetworkImage('elif.jpg'), TODO: Solve the error
              //image: NetworkImage(
              //'elif.jpg', TODO: solve the issue here image below will temporarily fill the blank
              //'https://www.clipartmax.com/png/middle/257-2572603_user-man-social-avatar-profile-icon-man-avatar-in-circle.png',
              //),
              //),
            ),
          ),
          ListTile(
            leading: Icon(Icons.credit_card_rounded),
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
            leading: Icon(Icons.settings),
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
            leading: Icon(Icons.question_mark_outlined),
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
            leading: Icon(Icons.star_border),
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
            leading: Icon(Icons.newspaper),
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
            leading: Icon(Icons.wifi_outlined),
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
            height: 70,
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.logout_sharp),
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
    );
  }
}
