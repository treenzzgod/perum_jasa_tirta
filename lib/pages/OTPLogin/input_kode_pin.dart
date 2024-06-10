import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/home.dart';

class InputPinLogin extends StatefulWidget {
  const InputPinLogin({super.key});

  @override
  State<InputPinLogin> createState() => _InputPinLoginState();
}

class _InputPinLoginState extends State<InputPinLogin> {
  String enteredPin = '';
  bool _isPinVisible = false;

  /// this widget will be use for each digit
  Widget numButton(int number) {
    return Container(
      width: 74,
      height: 74,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          5,
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              if (enteredPin.length < 6) {
                enteredPin += number.toString();
              }
              if (enteredPin.length == 6) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              }
            });
          },
          child: Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'ubuntu',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF03D3A6), // Warna atas
                Color(0xFF2E90B1), // Warna bawah
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 134,
                width: 161,
                child: Image(
                  image: AssetImage(
                    'images/Logo.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                '1.0.54',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Masukkan 6 Digit PIN, untuk Login',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Nomor teleponn atau pin salah, anda memiliki 2 kesempatan lagi',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Silahkan login',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lupa PIN?',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: index < enteredPin.length
                            ? Colors.white
                            : Color.fromARGB(78, 254, 254, 255)
                                .withOpacity(0.1),
                        border: Border.all(
                          color: index < enteredPin.length
                              ? Colors.white
                              : Colors.white,
                          width: 2,
                        ),
                      ),
                      child: _isPinVisible && index < enteredPin.length
                          ? Center(
                              child: Text(
                                enteredPin[index],
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          : null,
                    );
                  },
                ),
              ),

              /// visiblity toggle button
              // IconButton(
              //   onPressed: () {
              //     setState(() {
              //       isPinVisible = !isPinVisible;
              //     });
              //   },
              //   icon: Icon(
              //     isPinVisible ? Icons.visibility_off : Icons.visibility,
              //   ),
              // ),

              // SizedBox(height: isPinVisible ? 50.0 : 8.0),

              /// digits
              for (var i = 0; i < 3; i++)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      3,
                      (index) => numButton(1 + 3 * i + index),
                    ).toList(),
                  ),
                ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextButton(onPressed: null, child: SizedBox()),
                    numButton(0),
                    TextButton(
                      onPressed: () {
                        setState(
                          () {
                            if (enteredPin.isNotEmpty) {
                              enteredPin = enteredPin.substring(
                                  0, enteredPin.length - 1);
                            }
                          },
                        );
                      },
                      child: const Icon(
                        Icons.backspace_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     setState(() {
              //       enteredPin = '';
              //     });
              //   },
              //   child: const Text(
              //     'Reset',
              //     style: TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
