import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:tipik_figma/creditCard/myCardsNoMasterpass.dart';

class MyCards extends StatefulWidget {
  List<int> cardList;
  MyCards({required this.cardList});
  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  List<Widget> cardList = [
    CreditCard(
      color: Color.fromRGBO(118, 177, 135, 1),
      cardName: "  Ziraat Gold",
    ),
    CreditCard(
        color: Color.fromRGBO(118, 177, 135, 1), cardName: "  İş Bankası"),
    CreditCard(
      color: Color.fromRGBO(118, 177, 135, 1),
      cardName: "  Maximum",
    ),
  ];
  List<Widget> texts = [];
  @override
  Widget build(BuildContext context) {
    int currIndex = 0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
        body: Column(children: [
          Container(
              margin: EdgeInsets.only(top: 50),
              width: screenWidth,
              height: 600,
              child: Swiper(
                itemWidth: screenWidth - 30,
                itemBuilder: (BuildContext context, int index) {
                  if (index < cardList.length) {
                    return cardList[index];
                  } else
                    return NewCard();
                },
                itemCount: cardList.length + 1,
                viewportFraction: 0.7,
                scale: 0.5,
                onIndexChanged: (int index) {
                  setState(() {
                    currIndex = index;
                  });
                },
              )),
        ]));
  }
}

class CreditCard extends StatelessWidget {
  final Color color;
  final String cardName;

  const CreditCard({Key? key, required this.color, required this.cardName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //BURAYA TEXTVIEWLAR VS DE EKLENEBİLİR, BÖYLECE HER KART İÇİN İNPUT GİRME KISMI AÇILIR
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          // Add your child widget here
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 45,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  cardName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 200,
          height: 200,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(
              top: 50,
            ),
            child: const Text(
              'Şu anda ödemeleriniz için bu kart seçilidir. Tipik ödemelerinizde bu kart kullanılacaktır.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
          ),
        ),
        Positioned(
          top: 320,
          height: 200,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            child: const Text(
              "Ödemelerinizde farklı bir kart kullanmak için seçili kartınızı sağa veya sola kaydırarak değiştirebilirsiniz.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

class NewCard extends StatefulWidget {
  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  final cardNickname = TextEditingController();
  final cardNumber = TextEditingController();
  final cardLastUsage = TextEditingController();
  final cardCVV = TextEditingController();
  bool accountAgreement = false;
  bool sozlesme = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 15),
        height: MediaQuery.of(context).size.height - 200,
        width: MediaQuery.of(context).size.width - 50,
        color: Color.fromRGBO(235, 235, 235, 1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
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
                            color: Color.fromRGBO(163, 163, 163, 1)),
                        alignment: Alignment.center,
                        child: Container()),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  CustomPaint(
                    painter: LinePainter(),
                  ),
                  Container(
                    height: 25,
                    width: 163,
                    margin: EdgeInsets.only(left: 125, top: 10, bottom: 10),
                    child: Text(
                      'Yeni kart tanımla',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                width: 272,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  'Kart takma adı (Örn: Kişisel Kartım)',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(90, 89, 89, 1),
                      fontSize: 16.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 25,
                  width: 358,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: cardNickname,
                    decoration: InputDecoration(),
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                  )),
              Container(
                height: 25,
                width: 272,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  'Kart numarası',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(90, 89, 89, 1),
                      fontSize: 16.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 25,
                  width: 358,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: cardNumber,
                    decoration: InputDecoration(),
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                  )),
              Container(
                height: 25,
                width: 272,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  'Kart son kullanma tarihi (AA/YY)',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(90, 89, 89, 1),
                      fontSize: 16.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  height: 25,
                  width: 358,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    controller: cardLastUsage,
                    decoration: InputDecoration(),
                    onTapOutside: (event) =>
                        FocusManager.instance.primaryFocus?.unfocus(),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 72,
                width: 323,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                alignment: Alignment.topLeft,
                child: Text(
                  'Kart bilgileriniz Masterpass altyapısında saklanır. Kredi kartınızı tanımlanamanız halinde, telefon numaranıza ait bir MasterPass hesabı oluşturulur. Kart bilgileriniz tarafımızca bilinmemektedir.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 323,
                margin: EdgeInsets.only(
                  left: 10,
                ),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color.fromRGBO(0, 96, 179,
                            1), // set the border color of the checkbox
                      ),
                      child: Checkbox(
                        value: false, // set the initial value of the checkbox
                        onChanged: (bool? value) {
                          setState(() {
                            accountAgreement = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Masterpass hesabı oluşturulmasını onaylıyorum.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 323,
                margin: EdgeInsets.only(
                  left: 10,
                ),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color.fromRGBO(0, 96, 179, 1),
                      ),
                      child: Checkbox(
                        value: false, // set the initial value of the checkbox
                        onChanged: (bool? value) {
                          setState(() {
                            sozlesme = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Masterpass kullanıcı sözleşmesini okudum ve kabul ediyorum.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 72,
                width: 323,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 10,
                ),
                child: Container(
                  child: const Image(
                    width: 134,
                    height: 61,
                    image: NetworkImage(
                        'https://www.masterpassturkiye.com/files/01.png'),
                  ),
                ),
              ),
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
                    backgroundColor: Color.fromRGBO(86, 194, 95, 1),
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
            ],
          ),
        ),
      ),
    );
  }
}
