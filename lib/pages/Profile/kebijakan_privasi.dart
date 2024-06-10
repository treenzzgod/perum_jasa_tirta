import 'package:flutter/material.dart';

class Kebijakan extends StatelessWidget {
  const Kebijakan({super.key});

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
                        'Kebijakan Privasi',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Dalam menggunakan aplikasi ini, anda setuju untuk pihak Jasa Tirta 1 menyimpan seluruh data pribadi yang termasuk di dalamnya',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Jasa Tirta 1 menghormati dan menjaga kerahasiaan kerahasiaan data yang terseimpan. Data pribadi hanya digunakan Jasa Tirta 1 semata-mata untuk kepentingan peningkatan layanan, produk dan kelancaran transaksi PJT1 untuk pengguna dengan sangat memperhatikan undang-undang yang berlaku dan kepentingan pengguna',
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
