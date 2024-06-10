import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:perum_jasa_tirta/pages/buatpin.dart';
import 'package:perum_jasa_tirta/pages/succes_regis.dart';

class Layanan extends StatefulWidget {
  const Layanan({super.key});

  @override
  State<Layanan> createState() => _LayananState();
}

class _LayananState extends State<Layanan> {
  bool? _isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Ketentuan Layanan',
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ketentuan Layanan Jasa Tirta',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Color(0xFF2A96AF),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Text(
                      '1. Ketentuan Layanan',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Placerat interdum pretium sodales ultrices vel in. Dui at etiam velit ut hac luctus etiam at morbi. Lacus in sed id id viverra pretium orci viverra nisl. Urna hac sit non massa nulla. Tortor in ornare ac quam sed non id parturient. Ac natoque sed pulvinar dignissim sed et nec.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Placerat interdum pretium sodales ultrices vel in. Dui at etiam velit ut hac luctus etiam at morbi. Lacus in sed id id viverra pretium orci viverra nisl. Urna hac sit non massa nulla. Tortor in ornare ac quam sed non id parturient. Ac natoque sed pulvinar dignissim sed et nec.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Placerat interdum pretium sodales ultrices vel in. Dui at etiam velit ut hac luctus etiam at morbi. Lacus in sed id id viverra pretium orci viverra nisl. Urna hac sit non massa nulla. Tortor in ornare ac quam sed non id parturient. Ac natoque sed pulvinar dignissim sed et nec.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Text(
                      '2. Gunakan Lisesnsi',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Placerat interdum pretium sodales ultrices vel in. Dui at etiam velit ut hac luctus etiam at morbi. Lacus in sed id id viverra pretium orci viverra nisl. Urna hac sit non massa nulla. Tortor in ornare ac quam sed non id parturient. Ac natoque sed pulvinar dignissim sed et nec.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Placerat interdum pretium sodales ultrices vel in. Dui at etiam velit ut hac luctus etiam at morbi. Lacus in sed id id viverra pretium orci viverra nisl. Urna hac sit non massa nulla. Tortor in ornare ac quam sed non id parturient. Ac natoque sed pulvinar dignissim sed et nec.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Placerat interdum pretium sodales ultrices vel in. Dui at etiam velit ut hac luctus etiam at morbi. Lacus in sed id id viverra pretium orci viverra nisl. Urna hac sit non massa nulla. Tortor in ornare ac quam sed non id parturient. Ac natoque sed pulvinar dignissim sed et nec.',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Color(0xFF4D4D4D),
                          ),
                    ),
                  ),
                  CheckboxListTile(
                    value: timeDilation != 1.0,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value;
                        timeDilation = value! ? 2.0 : 1.0;
                      });
                    },
                    activeColor: Colors.white54,
                    checkColor: Colors.green,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saya Setuju dengan syarat,',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Color(0xFF4D4D4D),
                                  ),
                        ),
                        Text(
                          'ketentuan, dan kebijakan',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Color(0xFF4D4D4D),
                                  ),
                        ),
                        Text(
                          'privasi PJT',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    color: Color(0xFF4D4D4D),
                                  ),
                        ),
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: _isChecked == true
                          ? LinearGradient(
                              colors: [
                                Color(0xFF03D3A6),
                                Color(0xFF2E90B1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )
                          : null,
                      color: _isChecked == true ? null : Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: InkWell(
                      onTap: _isChecked == true
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SuccesRegister(),
                                ),
                              );
                            }
                          : null,
                      child: Center(
                        child: Text(
                          'SETUJU',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
