import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tipik_figma/creditCard/myCardsNoMasterpass.dart';

/*class nfcPopUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenHeight = MediaQuery.of(context).size.height; //683
    print(screenHeight);
    print(screenWidth);
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
          SizedBox(
            height: 75,
            width: 198,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Color.fromRGBO(86, 194, 95, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(22.0))),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Kullan',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
              ),
              onPressed: () => Navigator.pop(context),
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
                  fontWeight: FontWeight.w700,
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
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  });
}
  }
}*/
