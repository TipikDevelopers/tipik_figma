import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import './sms_screen.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  String countryCode = "+90";
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    phoneController.dispose();
    print("disposed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            // give the tab bar a height [can change height to preferred height]
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.white,
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'E-Posta & Şifre',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Telefon Numarası',
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(40),
                child: const Center(
                    child: Text(
                  "Var Olan Hesabınıza Giriş Yapın",
                  style: TextStyle(fontSize: 32),
                  textAlign: TextAlign.center,
                ))),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Center(
                      child: Column(
                    children: [
                      Container(
                          width: 320,
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            controller: userNameController,
                            decoration: InputDecoration(
                                iconColor: Colors.amber,
                                icon: Icon(Icons.mail_outline_rounded),
                                hintText: "E-posta addresiniz",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(90, 89, 89, 1)),
                                filled: true,
                                fillColor: Color.fromRGBO(217, 217, 217, 1),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(90, 89, 89, 1),
                                        width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2))),
                            onTapOutside: (event) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 50),
                          width: 320,
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                iconColor: Colors.amber,
                                icon: Icon(Icons.fingerprint),
                                hintText: "Şifreniz",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(90, 89, 89, 1)),
                                filled: true,
                                fillColor: Color.fromRGBO(217, 217, 217, 1),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(90, 89, 89, 1),
                                        width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2))),
                            onTapOutside: (event) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            obscureText: true, // for password
                          )),
                    ],
                  )),
                  // second tab bar view widget
                  //phone number part
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 0),
                        width: 400,
                        padding: EdgeInsets.all(10),
                        child: IntlPhoneField(
                          onCountryChanged: (country) =>
                              countryCode = "+" + country.dialCode,
                          controller: phoneController,
                          decoration: InputDecoration(
                              hintText: "Telefon Numaranız",
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(90, 89, 89, 1)),
                              filled: true,
                              fillColor: Color.fromRGBO(217, 217, 217, 1),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(90, 89, 89, 1),
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2))),
                          initialCountryCode: 'TR',
                        )),
                  ),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 60,
              child: ElevatedButton(
                child: Icon(Icons.arrow_forward),
                onPressed: () {
                  if (_tabController.index == 0) {
                    print("username: " + userNameController.text);
                    print("password: " + passwordController.text);
                  } else {
                    print("phone: " + countryCode + phoneController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SMSScreen(countryCode + phoneController.text)));
                  }
                },
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(), backgroundColor: Colors.amber),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Color.fromRGBO(90, 89, 89, 1)),
                onPressed: () {
                  print("pressed");
                },
                child: Text(
                  "Yeni Hesap Yarat",
                  style: TextStyle(decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}
