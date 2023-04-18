import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tipik_figma/login/signUp_screen.dart';
import './sms_screen.dart';
import '../mainPage/home_screen.dart';
import './LoginViewModel.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends LoginViewModel with SingleTickerProviderStateMixin {
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: (screenHeight * 9) / 100,
            ),
            // give the tab bar a height [can change height to preferred height]
            Container(
              padding: const EdgeInsets.all(5),
              height: (screenHeight * 9) / 100,
              width: (screenWidth * 360) / 390,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(64, 0, 0, 0),
                      blurRadius: 25,
                      spreadRadius: -12,
                      blurStyle: BlurStyle.outer)
                ],
                color: const Color.fromRGBO(217, 217, 217, 1),
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
                tabs: const [
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
                height: (screenHeight * 13) / 100,
                width: (screenWidth * 320) / 390,
                margin: const EdgeInsets.all(40),
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
                          height: (screenHeight * 80) / 844,
                          width: (screenWidth * 320) / 390,
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: userNameController,
                            decoration: InputDecoration(
                                iconColor: Colors.amber,
                                icon: const Icon(Icons.mail_outline_rounded),
                                hintText: "E-posta addresiniz",
                                hintStyle: const TextStyle(
                                    color: Color.fromRGBO(90, 89, 89, 1)),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        color: Color.fromRGBO(90, 89, 89, 1),
                                        width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 2))),
                            onTapOutside: (event) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                          )),
                      Container(
                          //margin: EdgeInsets.only(bottom: 50),
                          height: (screenHeight * 80) / 844,
                          width: (screenWidth * 320) / 390,
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                iconColor: Colors.amber,
                                icon: const Icon(Icons.fingerprint),
                                hintText: "Şifreniz",
                                hintStyle: const TextStyle(
                                    color: Color.fromRGBO(90, 89, 89, 1)),
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        color: Color.fromRGBO(90, 89, 89, 1),
                                        width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
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
                        height: (screenHeight * 120) / 844,
                        margin: const EdgeInsets.only(top: 0),
                        width: (screenWidth * 320) / 390,
                        padding: const EdgeInsets.all(10),
                        child: IntlPhoneField(
                          onCountryChanged: (country) =>
                              countryCode = "+${country.dialCode}",
                          controller: phoneController,
                          decoration: InputDecoration(
                              hintText: "Telefon Numaranız",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(90, 89, 89, 1)),
                              filled: true,
                              fillColor: const Color.fromRGBO(217, 217, 217, 1),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(90, 89, 89, 1),
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 2))),
                          initialCountryCode: 'TR',
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: (screenWidth * 150) / 390,
              height: (screenHeight * 7) / 100,
              child: ElevatedButton(
                onPressed: () {
                  if (_tabController.index == 0) {
                    print("username: ${userNameController.text}");
                    print("password: ${passwordController.text}");
                    fetchLogin(
                        userNameController.text, passwordController.text);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    print("phone: $countryCode${phoneController.text}");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SMSScreen(countryCode + phoneController.text)));
                  }
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.amber),
                child: const Icon(Icons.arrow_forward),
              ),
            ),
            SizedBox(
              height: (screenHeight * 150) / 844,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(90, 89, 89, 1)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUp("+905389742647")));
                },
                child: const Text(
                  "Yeni Hesap Yarat",
                  style: TextStyle(decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}
