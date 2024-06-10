import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perum_jasa_tirta/pages/home.dart';
import 'package:perum_jasa_tirta/pages/top%20up%20saldo/jumlah_topup.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  final TextEditingController _controller = TextEditingController();
  bool _isCardVisible = false; // State untuk menentukan visibilitas

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateVisibility);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateVisibility);
    _controller.dispose();
    super.dispose();
  }

  void _updateVisibility() {
    if (_controller.text.length >= 12) {
      setState(() {
        _isCardVisible = true;
      });
    } else {
      if (_isCardVisible) {
        setState(() {
          _isCardVisible = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 135,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF03D3A6),
                    Color(0xFF2E90B1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Top Up',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                              ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Container(
                      width: 59,
                      height: 50,
                      child: Image.asset('images/Logo.png'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Container(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Nomor Kartu',
                    hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF9A9A9A),
                        ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 42,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: _isCardVisible ? true : false,
              child: Column(
                children: [
                  Image.asset('images/card.png'),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 127,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: Color(0xFFD4D4D4),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextRow(
                            context,
                            title: 'Nama',
                            subtitle: 'Galih Aroon',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextRow(
                            context,
                            title: 'Nomor Kartu',
                            subtitle: '166060300111012',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextRow(
                            context,
                            title: 'Total Saldo',
                            subtitle: 'Rp 20.000',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JumlahTopup(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            width: 92,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xFF2A96AF),
                            ),
                            child: Center(
                              child: Text(
                                'Top Up',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget TextRow(BuildContext context,
    {required String title, required String subtitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      Text(
        subtitle,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    ],
  );
}
