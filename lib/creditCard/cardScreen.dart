import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tipik_figma/creditCard/myCardsNoMasterpass.dart';

class cardScreen extends StatelessWidget {
  List<int> cardList;
  cardScreen({required this.cardList});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenHeight = MediaQuery.of(context).size.height; //683
    print(screenHeight);
    print(screenWidth);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight / 683 * 70),
        child: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            color: Colors.black,
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          toolbarHeight: screenHeight / 683 * 70,
          title: const Text(
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
        color: const Color.fromRGBO(235, 235, 235, 1),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
              top: 50,
              height: 200,
              width: 308,
              child: Opacity(
                opacity: 0.8,
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
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(163, 163, 163, 0.4)),
                        padding: const EdgeInsets.all(20.0),
                        alignment: Alignment.centerLeft,
                        child: Container()),
                  ),
                ),
              )),
          Positioned(
            top: 80,
            height: 200,
            width: 342,
            child: Opacity(
              opacity: 0.3,
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
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(163, 163, 163, 0.65)),
                      padding: const EdgeInsets.all(20.0),
                      alignment: Alignment.centerLeft,
                      child: Container()),
                ),
              ),
            ),
          ),
          Positioned(
            top: 110,
            height: 210,
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
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(253, 200, 48, 1),
                          Color.fromRGBO(234, 115, 53, 1)
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    alignment: Alignment.centerLeft,
                    child: Container()),
              ),
            ),
          ),
          Positioned(
            top: 325,
            height: 61,
            width: 268,
            child: Container(
              child: const Image(
                width: 268,
                height: 61,
                image: NetworkImage(
                    'https://www.masterpassturkiye.com/files/01.png'),
              ),
            ),
          ),
          const Positioned(
            top: 385,
            height: 60,
            width: 349,
            child: Text(
              'Merhaba Arda.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 440,
            height: 80,
            width: 349,
            child: Text(
              'Tipik’e devam etmek için bir kredi kartı tanımlamalısın. Tipik MasterPass altyapısını kullanır.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Positioned(
            top: 540,
            width: 126,
            height: 58,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(86, 194, 95, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                elevation: 5, // Set the elevation to 5
              ),

              //Öykü commentledi - normalde if clauseun içinde kalacak. Şimdilik diğer sayfayı da görmek için alttaki buton widgetına konuldu.
              onPressed: () {
                /* if (cardList.isNotEmpty) {
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
                          height: MediaQuery.of(context).size.height * 0.65,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 30, bottom: 10),
                                child: const Image(
                                  width: 268,
                                  height: 61,
                                  image: NetworkImage(
                                      'https://www.masterpassturkiye.com/files/01.png'),
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 40,
                                  right: 40,
                                ),
                                child: const Text(
                                  'Kayıtlı telefon numaranıza ait Masterpass hesabı bulunmaktadır.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                              ),
                              const SizedBox(height: 50),
                              Container(
                                height: 75,
                                width: 198,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(86, 194, 95, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                  ),
                                  onPressed: () => Navigator.pop(context),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      'Kullan',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 35,
                                  left: 25,
                                  right: 25,
                                ),
                                child: const Text(
                                  'Telefon numaranıza kayıtlı kredi kartlarını uygulamaya aktarmak için Kullan butonuna basın.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 15,
                                  left: 25,
                                  right: 25,
                                ),
                                child: const Text(
                                  'Tipik, kredi kartı bilgilerinize sahip değildir. Kart bilgileriniz, MasterPass altyapısı üzerinden şifreli ve kısıtlı biçimde aktarılır.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                }*/
                //masterpass bulundu
                // else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyCardsNoMasterpass()));
                // }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.east, size: 40),
                ],
              ),
            ),
            /*child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(86, 194, 95, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                ),
                child: const Text(
                  '->',
                  style: TextStyle(
                      fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  if (cardList.isNotEmpty) {
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
                            height: MediaQuery.of(context).size.height * 0.65,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 30, bottom: 10),
                                  child: const Image(
                                    width: 268,
                                    height: 61,
                                    image: NetworkImage(
                                        'https://www.masterpassturkiye.com/files/01.png'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 40,
                                    right: 40,
                                  ),
                                  child: const Text(
                                    'Kayıtlı telefon numaranıza ait Masterpass hesabı bulunmaktadır.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                ),
                                const SizedBox(height: 50),
                                Container(
                                  height: 75,
                                  width: 198,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(86, 194, 95, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                      ),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        'Kullan',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 35,
                                    left: 25,
                                    right: 25,
                                  ),
                                  child: const Text(
                                    'Telefon numaranıza kayıtlı kredi kartlarını uygulamaya aktarmak için Kullan butonuna basın.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 15,
                                    left: 25,
                                    right: 25,
                                  ),
                                  child: const Text(
                                    'Tipik, kredi kartı bilgilerinize sahip değildir. Kart bilgileriniz, MasterPass altyapısı üzerinden şifreli ve kısıtlı biçimde aktarılır.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }
                  //masterpass bulundu
                  else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyCardsNoMasterpass()));
                  }
                }),*/
          ),
        ]),
      ),
    );
  }
}
