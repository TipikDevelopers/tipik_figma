import 'package:flutter/material.dart';
import './login/login_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: SafeArea(child: Login()),
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(246, 246, 246, 1)),
    );
  }
}
