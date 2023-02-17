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
                      'Hai, Admin',
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'administrator@example.com',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                child: Icon(
                  Icons.logout,
                  size: 25,
                  color: alertColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: secondaryTextStyle.copyWith(fontSize: 13),
          ),
          Icon(
            Icons.chevron_right,
            color: primaryTextColor,
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Akun',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, '/edit-profile');
              },
              child: menuItem(
                'Ubah Profil',
              ),
            ),
            menuItem(
              'History Pembelian',
            ),
            GestureDetector(
              onTap: () {},
              child: menuItem(
                'Wishlist',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Umum',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/privacy-policy');
              },
              child: menuItem(
                'Kebijakan pribadi',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/term');
              },
              child: menuItem(
                'Ketentuan Penggunaan',
              ),
            ),
            menuItem(
              'Tentang kami',
            ),
            GestureDetector(
              onTap: () {
                showVersionDialog();
              },
              child: menuItem(
                'Versi Aplikasi',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
