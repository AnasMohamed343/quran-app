import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  //Splash(splash);
  static const String routeName = 'Splash-Screen';

  // const Splash(param0, { Key key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('Home-Screen');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/splash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
