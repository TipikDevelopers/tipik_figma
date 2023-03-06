import 'package:flutter/material.dart';

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
                  'elif.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(253, 200, 48, 1),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('elif.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: Text(":)"),
            title: Text(
              "Kartlarım",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Text(":)"),
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
            leading: Text(":)"),
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
            leading: Text(":)"),
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
            leading: Text(":)"),
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
            leading: Text(":)"),
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
          Divider(),
          ListTile(
            leading: Text(":)"),
            title: Text(
              "Çıkış Yap",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
