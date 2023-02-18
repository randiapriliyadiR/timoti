import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';
import 'dart:math' as math;

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(30, 60, 30, 30),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Timoti Wallet',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        decoration: BoxDecoration(
                          color: backgroundColor3,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25, 0, 25, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: Image.asset(
                                  'assets/image_splash.png',
                                  width: 200,
                                  // height: 31,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Rp 120.000',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 80,
                              child: Card(
                                color: backgroundColor2,
                                elevation: 10,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.wallet_outlined,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                      Text(
                                        'Top Up',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 80,
                              child: Card(
                                color: backgroundColor2,
                                elevation: 10,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.qr_code_scanner_outlined,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                      Text(
                                        'scan',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 80,
                              child: Card(
                                color: backgroundColor2,
                                elevation: 10,
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.send,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                      Text(
                                        'Kirim',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              width: 80,
                              child: Card(
                                color: backgroundColor2,
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(math.pi),
                                        child: const Icon(
                                          Icons.send,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ),
                                      const Text(
                                        'Terima',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        'Riwayat Transaksi',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(top: 16),
                      child: Text(
                        'Riwayat transaksi kamu akan tampil disini',
                      ),
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
}
