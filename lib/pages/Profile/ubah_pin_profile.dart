import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class UbahPin extends StatefulWidget {
  const UbahPin({super.key});

  @override
  State<UbahPin> createState() => _UbahPinState();
}

class _UbahPinState extends State<UbahPin> {
  @override
  bool isButtonActive = false;
  String otpCode = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Ubah Pin',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF03D3A6),
                Color(0xFF2E90B1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                'PIN',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              obscureText: true,
              fieldHeight: 40,
              fieldWidth: 40,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  6,
                ),
              ),

              //runs when a code is typed in
              onCodeChanged: (String code) {
                setState(() {
                  isButtonActive = code.length == 6;
                });
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                setState(() {
                  otpCode = verificationCode;
                  isButtonActive = otpCode.length == 6;
                });
              }, // end onSubmit
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'PIN Baru',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              obscureText: true,
              fieldHeight: 40,
              fieldWidth: 40,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  6,
                ),
              ),
              //runs when a code is typed in
              onCodeChanged: (String code) {
                setState(() {
                  isButtonActive = code.length == 6;
                });
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                setState(() {
                  otpCode = verificationCode;
                  isButtonActive = otpCode.length == 6;
                });
              }, // end onSubmit
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Konfirmasi PIN',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              obscureText: true,
              fieldHeight: 40,
              fieldWidth: 40,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  6,
                ),
              ),
              //runs when a code is typed in
              onCodeChanged: (String code) {
                setState(() {
                  isButtonActive = code.length == 6;
                });
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                setState(() {
                  otpCode = verificationCode;
                  isButtonActive = otpCode.length == 6;
                });
              }, // end onSubmit
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF03D3A6),
                    Color(0xFF2E90B1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                // color: isButtonActive ? null : Colors.grey,
                borderRadius: BorderRadius.circular(6),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'KONFIRMASI',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
