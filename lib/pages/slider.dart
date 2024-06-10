import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:perum_jasa_tirta/colors/Color.dart';
import 'package:perum_jasa_tirta/pages/Register.dart';

class Slider extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);

  const Slider({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      // finishButtonText: 'Register',
      // onFinish: () {
      //   Navigator.push(
      //     context,
      //     CupertinoPageRoute(
      //       builder: (context) => Login(),
      //     ),
      //   );
      // },

      // finishButtonStyle: FinishButtonStyle(
      //   backgroundColor: kDarkBlueColor,
      // ),
      // trailing: Text(
      //   'Login',
      //   style: TextStyle(
      //     fontSize: 16,
      //     color: kDarkBlueColor,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
      // trailingFunction: () {
      //   Navigator.push(
      //     context,
      //     CupertinoPageRoute(
      //       builder: (context) => Login(),
      //     ),
      //   );
      // },
      controllerColor: Colors.green,
      totalPage: 3,
      headerBackgroundColor: Colors.transparent,
      pageBackgroundColor: Colors.transparent,
      background: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('gio'),
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
                left: 66,
                right: 66,
              ),
              child: Image.asset(
                'images/page1.png',
                height: 253,
                width: 258,
              ),
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 66,
            right: 66,
          ),
          child: Image.asset(
            'images/page2.png',
            height: 253,
            width: 258,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 66,
            right: 66,
          ),
          child: Image.asset(
            'images/page3.png',
            height: 253,
            width: 258,
          ),
        ),
        // Container(
        //   child: Center(
        //     child: Image.asset(
        //       'images/page4.png',
        //       height: 253,
        //       width: 258,
        //     ),
        //   ),
        // ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Praktis Berkendara Wisata',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ubuntu',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Aplikasi PJT1 menghadirkan kemudahan bagi pengguna jalur dan destinasi wisata Perum Jasa Tirta 1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'ubuntu',
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 400,
              ),
              Text(
                'You’ve reached your destination.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sliding with animation',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Start now!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Where everything is possible and customize your onboarding.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
