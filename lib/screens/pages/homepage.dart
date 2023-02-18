import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';
import 'package:timoti/widgets/product_card.dart';
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
      // Container(
      //   margin: EdgeInsets.only(
      //     top: defaultMargin,
      //     left: defaultMargin,
      //     right: defaultMargin,
      //   ),
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               'Hai, admin',
      //               style: primaryTextStyle.copyWith(
      //                 fontSize: 24,
      //                 fontWeight: semiBold,
      //               ),
      //             ),
      //             Text(
      //               'administrator@example.com',
      //               style: subtitleTextStyle.copyWith(fontSize: 16),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         width: 54,
      //         height: 54,
      //         decoration: const BoxDecoration(
      //           shape: BoxShape.circle,
      //           image: DecorationImage(
      //             image: AssetImage(
      //               'assets/image_profile.png',
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // );
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
                    color: backgroundWarningColor,
                  ),
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
                    color: backgroundWarningColor,
                  ),
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

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Produk Populer',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              const Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget newProductTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Produk Baru',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newProducts() {
      return Container(
        margin: const EdgeInsets.only(
          top: 14,
        ),
        child: const Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        balanceAccount(),
        categories(),
        popularProductTitle(),
        popularProducts(),
        newProductTitle(),
        newProducts(),
      ],
    );
  }
}
