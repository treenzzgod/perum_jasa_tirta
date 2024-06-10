import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/Colors/color.dart';
import 'package:perum_jasa_tirta/pages/OTPLogin/input_kode_pin.dart';
import 'package:perum_jasa_tirta/pages/Register.dart';
import 'package:perum_jasa_tirta/pages/buatpin.dart';
import 'package:perum_jasa_tirta/pages/home.dart';
import 'package:perum_jasa_tirta/pages/informasi.dart';
import 'package:perum_jasa_tirta/pages/kodeotp.dart';
import 'package:perum_jasa_tirta/pages/layanan.dart';
import 'package:perum_jasa_tirta/pages/oboarding.dart';
import 'package:perum_jasa_tirta/pages/Profile/profile.dart';
import 'package:perum_jasa_tirta/pages/slider.dart';
import 'package:perum_jasa_tirta/pages/splashscreen1.dart';
import 'package:perum_jasa_tirta/pages/splashscreen2.dart';
import 'package:perum_jasa_tirta/pages/top%20up%20saldo/metode_pembayaran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perum Jasa Tirta',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          //headline text
          headlineLarge: TextStyle(
            fontSize: 30,
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'ubuntu',
          ),
          headlineMedium: TextStyle(
            fontSize: 19,
            color: AppColors.textColor,
            fontFamily: 'ubuntu',
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            fontSize: 14,
            color: AppColors.textColor,
            fontFamily: 'ubuntu',
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 14,
            color: AppColors.textColor,
            fontFamily: 'ubuntu',
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            color: AppColors.textColor,
            fontFamily: 'ubuntu',
          ),
          titleMedium: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            fontFamily: 'ubuntu',
          ),
          //body text
          bodyLarge: TextStyle(
            fontSize: 12,
            color: AppColors.textColor,
            fontFamily: 'ubuntu',
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: TextStyle(
            fontSize: 8,
            color: AppColors.textColor,
            fontFamily: 'ubuntu',
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 5,
            color: Colors.blue,
            fontFamily: 'ubuntu',
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
