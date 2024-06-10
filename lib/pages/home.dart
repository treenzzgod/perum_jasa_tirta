import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:perum_jasa_tirta/pages/Dasboard.dart';
import 'package:perum_jasa_tirta/pages/Riwayat/HistoryPage.dart';
import 'package:perum_jasa_tirta/pages/Notifikasi/NotificationsPage.dart';
import 'package:perum_jasa_tirta/pages/berita.dart';
import 'package:perum_jasa_tirta/pages/Profile/profile.dart';
import 'package:perum_jasa_tirta/pages/top%20up%20saldo/topup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // Index tab yang aktif
  @override
  static const List<Widget> _pages = <Widget>[
    Dashboard(), // Placeholder untuk halaman utama
    TopUpPage(), // Halaman top up
    HistoryPage(), // Halaman riwayat
    NotificationsPage(), // Halaman notifikasi
    Profile(), // Halaman profil
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Color(0xFF03D3A6),
        unSelectedColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedIconSize: 24,
        unselectedIconSize: 24,
        selectedFontSize: 12,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        enableLineIndicator: true,
        lineIndicatorWidth: 5,
        indicatorType: IndicatorType.Top,
        // gradient: LinearGradient(
        //   colors: kGradients,
        // ),

        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Top Up',
            icon: Icons.account_balance_wallet,
          ),
          CustomBottomBarItems(
            label: 'Riwayat',
            icon: Icons.history_edu_rounded,
          ),
          CustomBottomBarItems(
            label: 'Notifikasi',
            icon: Icons.notifications_outlined,
          ),
          CustomBottomBarItems(
            label: 'Saya',
            icon: Icons.person_rounded,
          ),
        ],
      ),
    );
  }
}
