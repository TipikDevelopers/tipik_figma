import 'package:flutter/material.dart';
import './login/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Core/AuthManager.dart';
import 'login/Splash.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<AuthManager>(create: (context) => AuthManager(context))
    ],
    child: MyApp(),
  ));
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
      home: const SafeArea(child: Splash()),
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 246, 1)),
    );
  }
}
