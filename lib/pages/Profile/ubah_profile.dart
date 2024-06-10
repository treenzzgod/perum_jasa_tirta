import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UbahProfile extends StatefulWidget {
  const UbahProfile({super.key});

  @override
  State<UbahProfile> createState() => _UbahProfile();
}

class _UbahProfile extends State<UbahProfile> {
  @override
  final TextEditingController tanggalLahirController = TextEditingController();

  Future<void> _showCustomDatePicker(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Color(0xFF2A96AF),
            colorScheme: ColorScheme.light(primary: Color(0xFF2A96AF)),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      setState(() {
        tanggalLahirController.text =
            DateFormat('dd/MM/yyyy').format(pickedDate);
        // _checkFormCompletion();
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Ubah Profile',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 168,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/aroon.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Aroon Firdaus',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
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
                  bottomLeft: Radius.circular(400),
                  bottomRight: Radius.circular(400),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            widgettitle(context, title: 'Nama'),
            widgettitle(context, title: 'Email'),
            widgettitle(context, title: 'Nomor KTP'),
            widgettitle(context, title: 'Tempat Lahir'),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 25.0,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tanggal Lahir',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextField(
                    style: Theme.of(context).textTheme.titleSmall,
                    controller: tanggalLahirController,
                    readOnly: true,
                    onTap: () async {
                      await _showCustomDatePicker(context);
                    },
                  ),
                ],
              ),
            ),
            widgettitle(context, title: 'Alamat'),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
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
                child: InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Center(
                    child: Text(
                      'KONFIRMASI',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding widgettitle(
    BuildContext context, {
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        bottom: 10.0,
      ), //apply padding to all four sides(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          TextField(
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
