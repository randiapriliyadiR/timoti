import 'package:firebase_core/firebase_core.dart';
import 'package:timoti/screens/pages/cartpage.dart';
import 'package:timoti/screens/privacy_policy.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:timoti/screens/login.dart';
import 'package:timoti/screens/product.dart';
import 'package:timoti/screens/register.dart';
import 'package:timoti/screens/splash.dart';
import 'package:timoti/screens/term.dart';
import 'package:timoti/screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timoti Mall',
      home: const Splash(),
      routes: {
        // '/': (context) => Splash(),
        '/beranda': (context) => const Home(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/product': (context) => const Product(),
        '/cart': (context) => const CartPage(),
        '/privacy-policy': (context) => const PrivacyPolicy(),
        '/term': (context) => const Term(),
      },
    );
  }
}
