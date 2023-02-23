import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  String telNo;
  SignUp(this.telNo);
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final tcController = TextEditingController();
  bool kvkkAgreement = false;
  bool uyelik = false;
  bool kullanim = false;
  String date = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                  children: [
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              child: IconButton(onPressed: ()=>Navigator.pop(context),icon: Icon(Icons.arrow_back,),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Son Birkaç Adım Daha ...",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 55),
              margin: EdgeInsets.only(top: 0, bottom: 0),
              alignment: Alignment.centerLeft,
              child: Text(
                "İsim ve Soyisim",
                style:
                    TextStyle(fontSize: 15, color: Color.fromRGBO(90, 89, 89, 1)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 0, bottom: 10),
                width: 320,
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Color.fromRGBO(90, 89, 89, 1)),
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(90, 89, 89, 1), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black, width: 2))),
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                )),
            Container(
              padding: EdgeInsets.only(left: 55),
              margin: EdgeInsets.only(top: 20, bottom: 0),
              alignment: Alignment.centerLeft,
              child: Text(
                "TC Kimlik No",
                style:
                    TextStyle(fontSize: 15, color: Color.fromRGBO(90, 89, 89, 1)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 0, bottom: 27),
                width: 320,
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: tcController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Color.fromRGBO(90, 89, 89, 1)),
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(90, 89, 89, 1), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black, width: 2))),
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                )),
            Container(
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doğum Tarihi", style: TextStyle(fontSize: 15)),
                  TextButton(
                    onPressed: () => print("tuna is the best"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: Text(date.substring(0, 11),
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Telefon Numarası",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                      height: 30,
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(173, 173, 173, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(widget.telNo,
                          style: TextStyle(fontSize: 15, color: Colors.black)))
                ],
                
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Material(
                child: CheckboxListTile(
                  tileColor: Colors.transparent,
                  title: const Text('KVKK Aydınlatma Metnini okudum ve kabul ediyorum.'),
                  value: kvkkAgreement,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      kvkkAgreement = value!;
                    });
                  },
                  selectedTileColor: Colors.blue,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.green,
              child: Material(
                child: CheckboxListTile(
                  tileColor: Colors.transparent,
                  title: const Text('Üyelik Sözleşmesini okudum ve kabul ediyorum.'),
                  value: uyelik,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      uyelik = value!;
                    });
                  },
                  selectedTileColor: Colors.blue,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 60),
              color: Colors.green,
              child: Material(
                child: CheckboxListTile(
                  activeColor: Colors.transparent,
                  tileColor: Colors.transparent,
                  side:BorderSide(width: 0),
                  title: const Text('Kullanım Koşullarını okudum ve kabul ediyorum.'),
                  value: kullanim,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      kullanim = value!;
                    });
                  },
                  selectedTileColor: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(onPressed:null, child: Text("SignUp"))
                  ],
                ),
          )),
    );
  }
}
