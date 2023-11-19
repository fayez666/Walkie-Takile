import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:walkie_takile/pages/home.dart';
import 'package:walkie_takile/pages/login_page.dart';
import 'package:walkie_takile/pages/sign_up.dart';
import 'package:walkie_takile/pages/welcome_page.dart';
import 'package:walkie_takile/shared/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: Walkie.id,
      routes: {
        Walkie.id: (context) => const Walkie(),
        LoginPage.id: (context) => const LoginPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        Home.id: (context) => const Home(),
      },
      theme: ThemeData(
        primaryColor: kColorPrimary,
        useMaterial3: true,
      ),
    );
  }
}
