import 'package:flutter/material.dart';
import 'package:walkie_takile/pages/login_page.dart';
import 'package:walkie_takile/pages/sign_up.dart';

import '../shared/constants.dart';

class Walkie extends StatelessWidget {
  static const String id = 'welcome';
  const Walkie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(kAppTitle, style: TextStyle(color: Colors.white)),
        backgroundColor: kColorPrimary,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(height: 400, child: Image.asset("assets/images/walkie.png")),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Welcome to Walkie!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kColorIsRecording,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorPrimary,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              child: const Text('Log in')),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorPrimary,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 50),
              ),
              onPressed: () {
                Navigator.pushNamed(context, SignUpPage.id);
              },
              child: const Text('Sign Up')),
        ],
      )),
    );
  }
}
