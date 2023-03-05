import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        height: MediaQuery.of(context).size.height - 2,
        color: Color.fromRGBO(235, 235, 235, 1),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            top: 50,
            height: 200,
            width: 308,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 15,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                    height: 210,
                    width: 358,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(163, 163, 163, 0.4)),
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.centerLeft,
                    child: Container()),
              ),
            ),
          ),
          Positioned(
            top: 80,
            height: 200,
            width: 342,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 15,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                    height: 210,
                    width: 358,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(163, 163, 163, 0.65)),
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.centerLeft,
                    child: Container()),
              ),
            ),
          ),
          Positioned(
            top: 110,
            height: 200,
            width: 358,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 15,
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Container(
                    height: 210,
                    width: 358,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(253, 200, 48, 1),
                          Color.fromRGBO(234, 115, 53, 1)
                        ],
                      ),
                    ),
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.centerLeft,
                    child: Container()),
              ),
            ),
          ),
          Positioned(
            top: 320,
            height: 61,
            width: 268,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.masterpassturkiye.com/files/01.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            height: 60,
            width: 268,
            child: Text(
              'Merhaba Arda.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w900),
            ),
          ),
          Positioned(
            top: 440,
            height: 80,
            width: 280,
            child: Text(
              'Tipik’e devam etmek için bir kredi kartı tanımlamalısın. Tipik MasterPass altyapısını kullanır.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 500,
            height: 80,
            width: 280,
            child: IconButton(
              color: Colors.black,
              icon: Icon(
                Icons.arrow_forward,
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 600,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              'Kayıtlı telefon numaranıza ait Masterpass hesabı bulunmaktadır.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              child: const Text(
                                'Kullan',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}