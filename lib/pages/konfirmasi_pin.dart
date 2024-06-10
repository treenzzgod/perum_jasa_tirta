import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:perum_jasa_tirta/pages/informasi.dart';

class KonfirmasiPin extends StatefulWidget {
  const KonfirmasiPin({super.key});

  @override
  State<KonfirmasiPin> createState() => _KonfirmasiPinState();
}

class _KonfirmasiPinState extends State<KonfirmasiPin> {
  bool isButtonActive = false;
  String otpCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Konfirmasi PIN',style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
              Text('Konfirmasi PIN',
                  style: Theme.of(context).textTheme.headlineLarge),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Masukkan kembali PIN yang dibuat  ',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Color(0xFF9A9A9A),
                  ),
            ),
          ),
          Center(
            child: Text(
              'sebelumnya',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Color(0xFF9A9A9A),
                  ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          OtpTextField(
            numberOfFields: 6,
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
            height: 20,
          ),
          // Text(
          //   'Kirim Kode Baru Tunggu ',
          //   style: Theme.of(context)
          //       .textTheme
          //       .headlineSmall
          //       ?.copyWith(color: Colors.red),
          // ),
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
                          builder: (_) => Informasi(),
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
