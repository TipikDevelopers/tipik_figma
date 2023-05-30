import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCardsNoMasterpass extends StatefulWidget {
  @override
  State<MyCardsNoMasterpass> createState() => _MyCardsNoMasterpassState();
}

class _MyCardsNoMasterpassState extends State<MyCardsNoMasterpass> {
  final cardNickname = TextEditingController();
  final cardNumber = TextEditingController();
  final cardLastUsage = TextEditingController();
  final cardCVV = TextEditingController();
  bool accountAgreement = false;
  bool sozlesme = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - 200;
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
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 15),
            height: MediaQuery.of(context).size.height - 2,
            width: MediaQuery.of(context).size.width,
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
                            value:
                                false, // set the initial value of the checkbox
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
                            unselectedWidgetColor:
                                Color.fromRGBO(0, 96, 179, 1),
                          ),
                          child: Checkbox(
                            value:
                                false, // set the initial value of the checkbox
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
        ));
  }
}

class LinePainter extends CustomPainter {
  LinePainter() {
    print("oldum");
  }
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 1;
    canvas.drawLine(Offset(20, 20), Offset(120, 20), paint);
    canvas.drawLine(Offset(290, 20), Offset(390, 20), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class LineWithArrowPainter extends CustomPainter {
  LinePainter() {
    print("oldum");
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 1;

// Draw the arrowhead on the left
    final arrowPath1 = Path();
    arrowPath1.moveTo(25, 25); // Adjusted coordinate
    arrowPath1.lineTo(35, 20); // Adjusted coordinate
    arrowPath1.lineTo(35, 30); // Adjusted coordinate
    arrowPath1.close();
    canvas.drawPath(arrowPath1, paint);

// Draw the line on the left
    canvas.drawLine(
        Offset(30, 25), Offset(110, 25), paint); // Adjusted ending point
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ArrowPainter extends CustomPainter {
  final int cInd;
  const ArrowPainter({required this.cInd}) : super();
  @override
  void paint(Canvas canvas, Size size) {
    if (cInd == 0) {
      final paint = Paint();
      paint.color = Color.fromRGBO(89, 89, 89, 1);
      paint.strokeCap = StrokeCap.round;
      paint.strokeWidth = 1;
      canvas.drawLine(
          Offset(10, 20), Offset(350, 20), paint); // Adjusted starting point

// Draw the arrowhead
      final arrowPath = Path();
      arrowPath.moveTo(350, 20);
      arrowPath.lineTo(340, 15);
      arrowPath.lineTo(340, 25);
      arrowPath.close();
      canvas.drawPath(arrowPath, paint);
    } else {
      final paint = Paint();
      paint.color = Color.fromRGBO(89, 89, 89, 1);
      paint.strokeCap = StrokeCap.round;
      paint.strokeWidth = 1;

// Draw the first arrowhead
      final arrowPath1 = Path();
      arrowPath1.moveTo(10, 20); // Adjusted coordinate
      arrowPath1.lineTo(20, 15); // Adjusted coordinate
      arrowPath1.lineTo(20, 25); // Adjusted coordinate
      arrowPath1.close();
      canvas.drawPath(arrowPath1, paint);

// Draw the arrow body
      canvas.drawLine(
          Offset(20, 20), Offset(355, 20), paint); // Adjusted starting point

// Draw the second arrowhead
      final arrowPath2 = Path();
      arrowPath2.moveTo(355, 20); // Adjusted coordinate
      arrowPath2.lineTo(345, 15); // Adjusted coordinate
      arrowPath2.lineTo(345, 25); // Adjusted coordinate
      arrowPath2.close();
      canvas.drawPath(arrowPath2, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class DoubleArrowPainter extends CustomPainter {
  ArrowPainter() {
    print("oldum");
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color.fromRGBO(89, 89, 89, 1);
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 1;
    // Draw the first arrowhead
    final arrowPath1 = Path();
    arrowPath1.moveTo(15, 20);
    arrowPath1.lineTo(5, 15);
    arrowPath1.lineTo(5, 25);
    arrowPath1.close();
    canvas.drawPath(arrowPath1, paint);

    // Draw the arrow body
    canvas.drawLine(Offset(15, 20), Offset(350, 20), paint);

    // Draw the second arrowhead
    final arrowPath2 = Path();
    arrowPath2.moveTo(350, 20);
    arrowPath2.lineTo(360, 15);
    arrowPath2.lineTo(360, 25);
    arrowPath2.close();
    canvas.drawPath(arrowPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
