import 'package:flutter/material.dart';

class AturanPengguna extends StatelessWidget {
  const AturanPengguna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Aturan Pengguna',
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
                  height: 40,
                ),
                Container(
                  width: 165,
                  height: 135,
                  child: Image(
                    image: AssetImage('images/Logo1.png'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1.0.54',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 350,
                  height: 430,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Color(0xFFD4D4D4),
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Istilah',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Aplikasi PJT1 adalah Aplikasi yang dapat diakses melalui smartphone atau sarana lainya',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Registrasi merupakan akses awal layanan PJT1 oleh pengguna smartphone. Registrasi RFID PJT1 dapat dilakukan dengan memasukkan nomor handphone  dan untuk top up saldo RFID bisa memasukkan nomor seri pada kartu RFID ',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Smartphone adalah perangkat komunikasi seluler yang dipakai pengguna untuk mengakses PJT1, termasuk di dalam nya jaringan operator jasa seluler yang digunakan oleh pengguna ',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'PJT1 adalah aplikasi pembayaran akses masuk pada gate masuk yang dikelola PJT 1 seperti akses masuk ke bendungan lahor. Aplikasi PJT1 dapat digunakan oleh pengguna untuk pembayaran akses masuk di wisata lain yang dikelola oleh PJT 1.',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
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
