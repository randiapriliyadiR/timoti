import 'package:flutter/material.dart';
import 'package:timoti/screens/pages/chatpage.dart';
import 'package:timoti/screens/pages/homepage.dart';
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
    // ignore: non_constant_identifier_names
    Widget CartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: primaryTextColor,
        child: Icon(
          Icons.shopping_bag,
          size: 20,
          color: backgroundColor1,
        ),
        // child: Image.asset(
        //   'assets/icon_cart.png',
        //   width: 20,
        // ),
      );
    }

    Widget bottomNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            currentIndex: currentIndex,
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
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                    color: currentIndex == 0 ? activeNavyColor : navbarColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? activeNavyColor : navbarColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Icon(
                    Icons.wallet,
                    color: currentIndex == 2 ? activeNavyColor : navbarColor,
                  ),
                  // child: Image.asset(
                  //   'assets/icon_wishlist.png',
                  //   width: 20,
                  //   color: currentIndex == 2 ? activeNavyColor : navbarColor,
                  // ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/icon_profile.png',
                    width: 18,
                    color: currentIndex == 3 ? activeNavyColor : navbarColor,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WalletPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: CartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}
