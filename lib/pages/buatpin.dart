import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:perum_jasa_tirta/pages/konfirmasi_pin.dart';

class Buatpin extends StatefulWidget {
  const Buatpin({super.key});

  @override
  State<Buatpin> createState() => _BuatpinState();
}

class _BuatpinState extends State<Buatpin> {
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
              'Buat PIN',
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
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Buat PIN',
                        style: Theme.of(context).textTheme.headlineLarge),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'PIN/(Personal Identification Number) ',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Color(0xFF9A9A9A),
                        ),
                  ),
                ),
                Center(
                  child: Text(
                    'digunakan untuk masuk ke akun anda',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Color(0xFF9A9A9A),
                        ),
                  ),
                ),
                Center(
                  child: Text(
                    'dan bertransaksi',
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
                                builder: (context) => KonfirmasiPin(),
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
          ),
        ],
      ),
    );
  }
}
