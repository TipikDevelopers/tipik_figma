import 'package:flutter/material.dart';
import './login/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Core/AuthManager.dart';
void main() {
  runApp(MultiProvider(providers: [
    Provider<AuthManager>(create:(context)=>AuthManager(context) )
  ],child: MyApp(),));
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
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 246, 1)),
    );
  }
}
