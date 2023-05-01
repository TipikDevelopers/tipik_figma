import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tipik_figma/Core/AuthManager.dart';
import 'package:provider/provider.dart';
import 'package:tipik_figma/login/FirstInstall.dart';
import 'package:tipik_figma/login/introslider/FirstIntro.dart';
import 'package:tipik_figma/login/login_screen.dart';
import 'package:tipik_figma/mainPage/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  AuthManager get readAuth => context.read<AuthManager>();

  Future controlToApp() async {
    await readAuth.fetchUserToken();
    String? first = await readAuth.getInitial();
    if(first == null){Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Scaffold(body: FirstPage()))));}
    else if (readAuth.isLogin) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => HomePage())));
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Login()));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controlToApp();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
