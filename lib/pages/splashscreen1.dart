import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perum_jasa_tirta/pages/login.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:perum_jasa_tirta/pages/splashscreen2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const SplashScreen2(),
      ));
    });
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/home');
    // });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor("#03D3A6"),
              HexColor('#2E90B1'),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
