import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';
import 'package:timoti/widgets/product_card.dart';
import 'package:timoti/widgets/product_card_alt.dart';
import 'package:timoti/widgets/product_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: 100,
        height: 130,
        decoration: BoxDecoration(
          color: headerColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Selamat datang di Timoti',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Hello World',
                          style: blackTextStyle.copyWith(
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.map_outlined,
                    color: blackColor,
                    size: 35,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: backgroundColor1,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.search,
                        color: blackColor,
                        size: 24,
                      ),
                      Text(
                        'Cari Produk',
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget balanceAccount() {
      return Container(
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Icon(
                      Icons.stars,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Text(
                    '0 point',
                    style: blackTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Text(
                    'Rp 0.000.00',
                    style: blackTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warningColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.loyalty,
                    size: 30,
                    color: alertColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Special',
                  style: blackTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warningColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.face_retouching_natural,
                    size: 30,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Skin Care',
                  style: blackTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warningColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.clean_hands,
                    size: 30,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Hand Care',
                  style: blackTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warningColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.brush,
                    size: 30,
                    color: secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Make Up',
                  style: blackTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget newProductTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: 10,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: alertColor,
        ),
        child: Text(
          'Produk Terbaru',
          style: whiteTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newProducts() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: alertColor,
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget bestProductTitle() {
      return Container(
        padding: EdgeInsets.only(
          top: 10,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: Text(
          'Rekomendasi Produk',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget bestProducts() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCardAlt(),
              ProductCardAlt(),
              ProductCardAlt(),
              ProductCardAlt(),
              ProductCardAlt(),
            ],
          ),
        ),
      );
    }

    Widget products() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCardAlt(),
              ProductCardAlt(),
              ProductCardAlt(),
              ProductCardAlt(),
              ProductCardAlt(),
            ],
          ),
        ),
      );
    }

    Widget addressLabel() {
      return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: alertColor,
        ),
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 15,
          bottom: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Timoti Beauty Indonesia",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "lorem ipsum sir dolor amet",
              style: whiteTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        balanceAccount(),
        categories(),
        bestProductTitle(),
        bestProducts(),
        newProductTitle(),
        newProducts(),
        products(),
        addressLabel(),
      ],
    );
  }
}
