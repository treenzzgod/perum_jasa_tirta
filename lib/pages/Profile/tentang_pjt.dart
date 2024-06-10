import 'package:flutter/material.dart';

class TentangPJT extends StatelessWidget {
  const TentangPJT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Tentang PJT',
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
                        'Tentang PJT',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Perum Jasa Tirta I, yang sering disebut PJT I, adalah Badan Usaha Milik Negara (BUMN) di Indonesia yang mengkhususkan diri dalam pengelolaan sumber daya air. Didirikan berdasarkan Peraturan Pemerintah No. 5 tahun 1990 pada tanggal 12 Februari 1990, peran utama perusahaan ini meliputi pengelolaan sumber daya air secara terintegrasi dari hulu sampai hilir, berbasis wilayah sungai.',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Perusahaan ini berkomitmen untuk memberikan pelayanan secara profesional sesuai dengan tugas dan tanggung jawabnya sebagaimana diatur dalam Peraturan Pemerintah No. 46 tahun 2010. Tanggung jawab ini mencakup berbagai aspek pengelolaan sumber daya air seperti pelayanan kepada pengguna air, pemeliharaan infrastruktur sumber daya air, dan upaya konservasi lingkungan. ',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'PJT I bertujuan menjadi perusahaan pengelola sumber daya air nasional kelas dunia. Misi perusahaan meliputi mengelola sumber daya air secara terpadu sesuai penugasan dari pemerintah, memberikan layanan terbaik kepada pelanggan, meningkatkan nilai tambah sumber daya air dan sumber daya lainnya, serta mengelola perusahaan secara profesional, inovatif dan berkinerja unggul sesuai prinsip tata kelola perusahaan yang baik.',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
