import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/home.dart';
import 'package:perum_jasa_tirta/pages/top%20up%20saldo/pembayaran_topup.dart';

class MetodePembayaranTopup extends StatefulWidget {
  const MetodePembayaranTopup({Key? key}) : super(key: key);

  @override
  State<MetodePembayaranTopup> createState() => _MetodePembayaranTopupState();
}

class _MetodePembayaranTopupState extends State<MetodePembayaranTopup> {
  int _selectedMethod = 0;

  final List<Map<String, dynamic>> _paymentMethods = [
    {'name': 'BTN Virtual Account', 'logo': 'images/btn.png'},
    {'name': 'Alfamart/Alfamidi', 'logo': 'images/alfamart.png'},
    {'name': 'Indomaret', 'logo': 'images/indomaret.png'},
    {'name': 'Ovo', 'logo': 'images/ovo.png'},
    {'name': 'Dana', 'logo': 'images/dana.png'},
    {'name': 'Gopay', 'logo': 'images/gopay.png'},
    {'name': 'ShopeePay', 'logo': 'images/shopee.png'},
    {'name': 'Mandiri Virtual Account', 'logo': 'images/mandiri.png'},
  ];

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
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Checkout',
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
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Color(0xFFD4D4D4),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Metode Pembayaran',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  Divider(color: Color(0xFF03D3A6), thickness: 2),
                  Container(
                    padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                    child: ListView.builder(
                      physics:
                          NeverScrollableScrollPhysics(), // Disable scrolling pada ListView
                      shrinkWrap:
                          true, // Mengizinkan ListView untuk menentukan ukuran sendiri
                      itemCount: _paymentMethods.length,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          title: Text(_paymentMethods[index]['name']),
                          secondary:
                              Image.asset(_paymentMethods[index]['logo']),
                          controlAffinity: ListTileControlAffinity.trailing,
                          value: index,
                          groupValue: _selectedMethod,
                          onChanged: (value) {
                            setState(() {
                              _selectedMethod = value as int;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PembayaranTopup(),
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
                          'Pilih',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
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
    );
  }
}
