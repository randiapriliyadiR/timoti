import 'package:flutter/material.dart';
import 'package:timoti/screens/pages/cartpage.dart';
import 'package:timoti/screens/pages/chatpage.dart';
import 'package:timoti/screens/pages/homepage.dart';
import 'package:timoti/screens/pages/messagepage.dart';
import 'package:timoti/screens/pages/profilepage.dart';
import 'package:timoti/screens/pages/walletpage.dart';
import 'package:timoti/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNav() {
      return BottomAppBar(
        child: BottomNavigationBar(
          backgroundColor: primaryTextColor,
          currentIndex: currentIndex,
          unselectedItemColor: navbarColor,
          selectedItemColor: activeNavColor,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                child: Icon(
                  Icons.home_sharp,
                  size: 24,
                  color: currentIndex == 0 ? activeNavColor : navbarColor,
                ),
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                child: Icon(
                  Icons.shopping_cart_sharp,
                  size: 24,
                  color: currentIndex == 1 ? activeNavColor : navbarColor,
                ),
              ),
              label: 'Keranjang',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 24,
                  color: currentIndex == 2 ? activeNavColor : navbarColor,
                ),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                child: Icon(
                  Icons.chat,
                  size: 24,
                  color: currentIndex == 3 ? activeNavColor : navbarColor,
                ),
              ),
              label: 'Pesan',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                child: Icon(
                  Icons.person,
                  size: 24,
                  color: currentIndex == 3 ? activeNavColor : navbarColor,
                ),
              ),
              label: 'Akun',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const CartPage();
        case 2:
          return const WalletPage();
        case 3:
          return const MessagePage();
        case 4:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}
