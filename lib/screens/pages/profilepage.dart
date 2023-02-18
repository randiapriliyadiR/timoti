import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<void> showVersionDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        child: AlertDialog(
          backgroundColor: backgroundColor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/image_splash.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Timoti Mall',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Versi Aplikasi 1.1.0',
                  style: secondaryTextStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 154,
                  height: 44,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Kembali',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.all(
            defaultMargin,
          ),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/image_profile.png',
                  width: 64,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Guest',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Ubah Profil >',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String text) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: primaryTextStyle.copyWith(fontSize: 16),
              ),
              Icon(
                Icons.chevron_right,
                color: primaryTextColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: backgroundColor5,
              thickness: 0.3,
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  menuItem(
                    'History Pembelian',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 4,
                    ),
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
                  ),
                ],
              ),
            ),
            Divider(
              color: backgroundColor5,
              thickness: 0.3,
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Voucher',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Points',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Referral',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Setelan',
              ),
            ),
            Divider(
              color: backgroundColor5,
              thickness: 0.3,
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Versi Aplikasi',
              ),
            ),
            Divider(
              color: backgroundColor5,
              thickness: 0.3,
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Tentang kami',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Kebijakan Pribadi',
              ),
            ),
            Divider(
              color: backgroundColor5,
              thickness: 0.3,
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Ketentuan Penggunaan',
              ),
            ),
            Divider(
              color: backgroundColor5,
              thickness: 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 50,
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (route) => false);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                    child: Text(
                      'Login/Daftar',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
