import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perum_jasa_tirta/pages/Register.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with SingleTickerProviderStateMixin {
  @override
  // void initState() {
  //   super.initState();
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  //   Future.delayed(Duration(seconds: 5), () {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //       builder: (context) => Login(),
  //     ));
  //   });
  //   // Future.delayed(Duration(seconds: 3), () {
  //   //   Navigator.pushReplacementNamed(context, '/home');
  //   // });
  // }

  // void dispose() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: SystemUiOverlay.values);
  //   super.dispose();
  // }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
            ),
            Image.asset(
              "images/Logo.png",
              fit: BoxFit.fill,
              width: 184,
              height: 175,
            ),
            SizedBox(
              height: 250,
            ),
            Text(
              '1.1',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
