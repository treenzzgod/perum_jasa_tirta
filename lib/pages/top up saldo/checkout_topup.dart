import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/top%20up%20saldo/metode_pembayaran.dart';

class CheckoutTopup extends StatefulWidget {
  const CheckoutTopup({super.key});

  @override
  State<CheckoutTopup> createState() => _CheckoutTopupState();
}

class _CheckoutTopupState extends State<CheckoutTopup> {
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
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 148,
              padding: EdgeInsets.all(10),
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
                  Image.asset(
                    'images/card.png',
                    width: 170,
                    height: 109,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Galih Aroon',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Jumlah Saldo',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rp.100.000',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Color(0xFF9A9A9A),
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 222,
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
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset('images/uangelektronik.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Uang Elektronik',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xFF03D3A6),
                    thickness: 2,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                    child: Column(
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
                          title: 'Jenis Pembayaran ',
                          subtitle: ' Rp 100.000',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextRow(
                          context,
                          title: 'Nominal Top Up',
                          subtitle: 'Rp 100.000',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextRow(
                          context,
                          title: 'Admin',
                          subtitle: 'Rp 20.000',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
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
                  TextRow(context, title: 'Biaya Admin', subtitle: 'Rp 1.000'),
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
                        builder: (context) => MetodePembayaranTopup(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Container(
                      width: 110,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFF2A96AF),
                      ),
                      child: Center(
                        child: Text(
                          'Pilih Pembayaran',
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
}
