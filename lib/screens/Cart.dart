import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';
import 'package:timoti/widgets/cart_card.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Widget emptyCard() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Opss! Keranjang kamu masih kosong',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Ayo Cari Produk Terbaikmu!',
              style: secondaryTextStyle,
            ),
            Container(
              width: 154,
              height: 44,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/beranda', (route) => false);
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  'Jelajahi Produk',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle,
                  ),
                  Text(
                    'Rp 23.000',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: backgroundColor1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          "Keranjang",
          style: blackTextStyle,
        ),
        elevation: 0,
      ),
      body: content(),
      bottomNavigationBar: 1 == 0 ? const SizedBox() : customBottomNav(),
    );
  }
}
