import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/top%20up%20saldo/checkout_topup.dart';

class JumlahTopup extends StatefulWidget {
  const JumlahTopup({super.key});

  @override
  State<JumlahTopup> createState() => _JumlahTopupState();
}

class _JumlahTopupState extends State<JumlahTopup> {
  int? _selectedAmountIndex; // Menyimpan indeks jumlah yang dipilih

  // Data jumlah top up
  final List<Map<String, dynamic>> topUpOptions = [
    {'amount': 'Rp. 10.000', 'image': 'images/card1.png'},
    {'amount': 'Rp. 20.000', 'image': 'images/card1.png'},
    {'amount': 'Rp. 50.000', 'image': 'images/card1.png'},
    {'amount': 'Rp. 100.000', 'image': 'images/card1.png'},
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
                      'Top Up',
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
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 40,
              ),
              child: Row(
                children: [
                  Text(
                    'Jumlah Top Up',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: topUpOptions.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedAmountIndex = index;
                      });
                    },
                    child: Container(
                      width: 165,
                      height: 500,
                      decoration: BoxDecoration(
                        color: _selectedAmountIndex == index
                            ? Color(0xFF2A96AF)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFF03D3A6),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Image.asset(
                            topUpOptions[index]['image'],
                            width: 140,
                            height: 105,
                          ),
                          Text(
                            topUpOptions[index]['amount'],
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: _selectedAmountIndex == index
                                      ? Colors.white
                                      : Color(0xFF03D3A6),
                                ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
                        builder: (context) => CheckoutTopup(),
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
                          'Top Up',
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
