import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:perum_jasa_tirta/pages/buatpin.dart';

class KodeOTP extends StatefulWidget {
  const KodeOTP({super.key});

  @override
  State<KodeOTP> createState() => _KodeOTPState();
}

class _KodeOTPState extends State<KodeOTP> {
  bool isButtonActive = false;
  String otpCode = '';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Kode OTP',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Verifikasi',
                  style: Theme.of(context).textTheme.headlineLarge),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Masukkan Kode OTP pada pesan ',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Color(0xFF9A9A9A),
                  ),
            ),
          ),
          Center(
            child: Text(
              'yang telah Kami kirim',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Color(0xFF9A9A9A),
                  ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            obscureText: true,
            fieldHeight: 50,
            fieldWidth: 50,
            borderRadius: BorderRadius.all(
              Radius.circular(
                6,
              ),
            ),
            //runs when a code is typed in
            onCodeChanged: (String code) {
              setState(() {
                isButtonActive = code.length == 4;
              });
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              setState(() {
                otpCode = verificationCode;
                isButtonActive = otpCode.length == 4;
              });
            }, // end onSubmit
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Kirim Kode Baru Tunggu ',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.red),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
              gradient: isButtonActive
                  ? LinearGradient(
                      colors: [
                        Color(0xFF03D3A6),
                        Color(0xFF2E90B1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : null,
              color: isButtonActive ? null : Colors.grey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: InkWell(
              onTap: isButtonActive
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Buatpin(),
                        ),
                      );
                    }
                  : null,
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
    );
  }
}
