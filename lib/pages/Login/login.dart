import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perum_jasa_tirta/Colors/color.dart';
import 'package:perum_jasa_tirta/pages/Login/otp_login.dart';
import 'package:perum_jasa_tirta/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controller = TextEditingController();
  bool _isButtonActive = false;
  bool _showErrorMessage = false;
  bool _showErrorNomor = false;
  FocusNode _focusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
    _controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      final textLength = _controller.text.length;
      if (textLength == 0 || textLength < 1) {
        _isButtonActive = false;
        _showErrorMessage = true;
      } else if (textLength > 0 || textLength <= 10) {
        _isButtonActive = false;
        _showErrorNomor = true;
        _showErrorMessage = false;
      }
      if (textLength >= 10) {
        _isButtonActive = true;
        _showErrorMessage = false;
        _showErrorNomor = false;
      }
      // _isButtonActive = textLength >= 10;
      // _showErrorMessage = textLength == 0 || textLength < 10;
      // print('Text length: $textLength');
      // print('Show error message: $_showErrorMessage');
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
            )
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                bottom: 10,
              ),
              child: Text(
                'Yuk, Kita Mulai',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'ubuntu',
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: text14(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                  ),
                  child: Container(
                    width: 73,
                    height: 42,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF9A9A9A),
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                            'images/indo.png',
                          ),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '+62',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 15,
                        left: 15,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                  width: 270,
                  height: 42,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 110,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                      child: Text(
                        'Nomor tidak boleh kosong ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.red,
                            ),
                      ),
                      visible: _showErrorMessage),
                  Visibility(
                      child: Text(
                        'Nomor tidak boleh  kurang dari 10 angka',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.red,
                            ),
                      ),
                      visible: _showErrorNomor),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    gradient: _isButtonActive
                        ? LinearGradient(
                            colors: [
                              Color(0xFF03D3A6),
                              Color(0xFF2E90B1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                        : null,
                    borderRadius: BorderRadius.circular(8.0),
                    color: _isButtonActive ? null : Colors.grey,
                  ),
                  child: TextButton(
                    onPressed: _isButtonActive
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => LoginOTP(),
                              ),
                            );
                          }
                        : null,
                    child: Text(
                      'KIRIM',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                              ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class text14 extends StatelessWidget {
  const text14({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Masukkan nomor ponsel anda',
      style: TextStyle(
        fontSize: 14,
        fontFamily: 'ubuntu',
        color: AppColors.textColor,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
