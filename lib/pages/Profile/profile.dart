import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/Profile/alamat_saya.dart';
import 'package:perum_jasa_tirta/pages/Profile/aturan_pengguna.dart';
import 'package:perum_jasa_tirta/pages/Profile/faq.dart';
import 'package:perum_jasa_tirta/pages/Profile/hubungi_pjt.dart';
import 'package:perum_jasa_tirta/pages/Profile/kebijakan_privasi.dart';
import 'package:perum_jasa_tirta/pages/Profile/tentang_pjt.dart';
import 'package:perum_jasa_tirta/pages/Profile/ubah_pin_profile.dart';
import 'package:perum_jasa_tirta/pages/Profile/ubah_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Profile',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
                bottom: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/aroon.png'),
                    width: 54,
                    height: 56,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Galih Aroon',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        '62819281982',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    width: 45,
                    height: 56,
                    child: Image(
                      image: AssetImage('images/logout.png'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UbahProfile(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ubah Profile',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UbahPin(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ubah PIN',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlamatSaya(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat Saya',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Layanan',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AturanPengguna(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Aturan Pengguna',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Kebijakan(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kebijakan Privasi',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Hubungi(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hubungi PJT',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TentangPJT(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tentang PJT',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FAQPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FAQ',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                width: MediaQuery.of(context).size.width - 40,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF4D4D4D),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daftar tags',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
