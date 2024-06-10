import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/Login/login.dart';
import 'package:perum_jasa_tirta/pages/Register.dart';
import 'package:perum_jasa_tirta/pages/model/model_login.dart';
import 'package:perum_jasa_tirta/pages/slider.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Image(
            image: AssetImage(
              'images/Logo1.png',
            ),
            width: 109,
            height: 71,
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 253,
                        width: 258,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ubuntu',
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                          fontFamily: 'ubuntu',
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF03D3A6),
                  Color(0xFF2E90B1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            height: 50,
            padding: EdgeInsets.all(8),
            width: 350,
            child: TextButton(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'ubuntu',
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Login(),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            height: 50,
            padding: EdgeInsets.all(5),
            width: 350,
            child: TextButton(
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'ubuntu',
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Register(),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Butuh Bantuan?",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 10,
                  fontFamily: 'ubuntu',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1.0.54',
                style: TextStyle(
                  fontFamily: 'ubuntu',
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: currentIndex == index ? 20 : 10,
      margin: EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF2A96AF),
      ),
    );
  }
}
