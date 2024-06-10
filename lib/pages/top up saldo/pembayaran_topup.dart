import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/DaftarTransaksi/transaksi.dart';
import 'package:perum_jasa_tirta/pages/Dasboard.dart';
import 'package:perum_jasa_tirta/pages/Profile/profile.dart';
import 'package:perum_jasa_tirta/pages/home.dart';

class PembayaranTopup extends StatefulWidget {
  const PembayaranTopup({super.key});

  @override
  State<PembayaranTopup> createState() => _PembayaranTopupState();
}

class _PembayaranTopupState extends State<PembayaranTopup> {
  @override
  int _selectedMethod = 0;

  final List<Map<String, dynamic>> _paymentMethods = [
    {'name': 'BTN Virtual Account', 'logo': 'images/btn.png'},
    {'name': 'Alfamart/Alfamidi', 'logo': 'images/alfamart.png'},
  ];
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
                  right: 20,
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
                      'Pembayaran',
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
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
                    // SizedBox(height: 20),
                    Divider(
                      color: Color(0xFF03D3A6),
                      thickness: 1,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 15,
                        left: 15,
                      ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Lihat Semua',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFF03D3A6),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: 15,
                  top: 10,
                  right: 15,
                  bottom: 10,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Ringkasan Pembayaran',
                          style: Theme.of(context).textTheme.headlineMedium,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextRow(context,
                        title: 'Nominal Top Up', subtitle: 'Rp 100.000'),
                    SizedBox(
                      height: 10,
                    ),
                    TextRow(context,
                        title: 'Biaya Admin', subtitle: 'Rp 1.000'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('images/add.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Rp 101.000',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(left: 25, right: 25, top: 60),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 83,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Tagihan',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Rp 125.500',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      _showPaymentSuccessDialog();
                    },
                    child: Container(
                      width: 110,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFF2A96AF),
                      ),
                      child: Center(
                        child: Text(
                          'Bayar',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.of(context).pop(); // Tutup dialog
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DaftarTransaksi(),
            ), // Navigasi ke halaman Profile
          );
        });

        return AlertDialog(
          content: Image.asset('images/success.png'),
        );
      },
    );
  }
}

Row TextRow(BuildContext context,
    {required String title, required String subtitle}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    ],
  );
}
