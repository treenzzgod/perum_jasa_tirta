import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:perum_jasa_tirta/pages/buatpin.dart';
import 'package:perum_jasa_tirta/pages/layanan.dart';

class Informasi extends StatefulWidget {
  const Informasi({Key? key}) : super(key: key);

  @override
  State<Informasi> createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  bool isButtonActive = false;
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController noKtpController = TextEditingController();
  final TextEditingController tempatLahirController = TextEditingController();
  final TextEditingController tanggalLahirController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  @override
  void initState() {
    super.initState();
    namaController.addListener(_checkFormCompletion);
    emailController.addListener(_checkFormCompletion);
    noKtpController.addListener(_checkFormCompletion);
    tempatLahirController.addListener(_checkFormCompletion);
    tanggalLahirController.addListener(_checkFormCompletion);
    alamatController.addListener(_checkFormCompletion);
  }

  void _checkFormCompletion() {
    setState(() {
      isButtonActive = namaController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          noKtpController.text.isNotEmpty &&
          tempatLahirController.text.isNotEmpty &&
          tanggalLahirController.text.isNotEmpty &&
          alamatController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    namaController.dispose();
    emailController.dispose();
    noKtpController.dispose();
    tempatLahirController.dispose();
    tanggalLahirController.dispose();
    alamatController.dispose();
    super.dispose();
  }

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
        _checkFormCompletion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Informasi Data ',
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
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'Isi semua data registrasi agar kamu dapat cepat',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Color(0xFF9A9A9A),
                      ),
                ),
              ),
              Center(
                child: Text(
                  'mengenali anda',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Color(0xFF9A9A9A),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: namaController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Nama Lengkap',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Email',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: noKtpController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'No KTP',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: tempatLahirController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Tempat Lahir',
                          ),
                        ),
                      ),
                    ),
                    //Tanggal lahir
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: tanggalLahirController,
                          readOnly: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            prefixIcon: Icon(Icons.calendar_month_rounded),
                            label: Text('Tanggal Lahir'),
                          ),
                          onTap: () async {
                            await _showCustomDatePicker(context);
                          },
                        ),
                      ),
                    ),
                    //input code
                    //
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: 50,
                        child: TextField(
                          controller: alamatController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            labelText: 'Alamat',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  gradient: isButtonActive
                      ? LinearGradient(
                          colors: [
                            Color(0xFF03D3A6),
                            Color(0xFF2E90B1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      : null,
                  color: isButtonActive ? null : Colors.grey,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: InkWell(
                  onTap: isButtonActive
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Layanan(),
                            ),
                          );
                        }
                      : null,
                  child: Center(
                    child: Text(
                      'LANJUTKAN',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
