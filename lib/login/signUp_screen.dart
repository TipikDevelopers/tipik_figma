import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final String telNo;
  const SignUp(this.telNo);
  @override
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
              child: IconButton(onPressed: ()=>Navigator.pop(context),icon: const Icon(Icons.arrow_back,),),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "Son Birkaç Adım Daha ...",
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 55),
              margin: const EdgeInsets.only(top: 0, bottom: 0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "İsim ve Soyisim",
                style:
                    TextStyle(fontSize: 15, color: Color.fromRGBO(90, 89, 89, 1)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 0, bottom: 10),
                width: 320,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Color.fromRGBO(90, 89, 89, 1)),
                      filled: true,
                      fillColor: const Color.fromRGBO(217, 217, 217, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(90, 89, 89, 1), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black, width: 2))),
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                )),
            Container(
              padding: const EdgeInsets.only(left: 55),
              margin: const EdgeInsets.only(top: 20, bottom: 0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "TC Kimlik No",
                style:
                    TextStyle(fontSize: 15, color: Color.fromRGBO(90, 89, 89, 1)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 0, bottom: 27),
                width: 320,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: tcController,
                  decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Color.fromRGBO(90, 89, 89, 1)),
                      filled: true,
                      fillColor: const Color.fromRGBO(217, 217, 217, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(90, 89, 89, 1), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black, width: 2))),
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                )),
            SizedBox(
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Doğum Tarihi", style: TextStyle(fontSize: 15)),
                  TextButton(
                    onPressed: () => print("tuna is the best"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: Text(date.substring(0, 11),
                        style: const TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Telefon Numarası",
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                      height: 30,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(173, 173, 173, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(widget.telNo,
                          style: const TextStyle(fontSize: 15, color: Colors.black)))
                ],
                
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
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
              margin: const EdgeInsets.only(top: 20),
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
              margin: const EdgeInsets.only(top: 20,bottom: 30),
              color: Colors.green,
              child: Material(
                child: CheckboxListTile(
                  tileColor: Colors.transparent,
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
            const ElevatedButton(onPressed:null, child: Text("SignUp"))
                  ],
                ),
          )),
    );
  }
}
