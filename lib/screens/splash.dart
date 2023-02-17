import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timoti/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/beranda'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 60,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/image_splash.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
