import 'package:flutter/material.dart';

import '../shared/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String id = 'login';

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(kAppTitle, style: TextStyle(color: Colors.white)),
        backgroundColor: kColorPrimary,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 200, child: Image.asset("assets/images/walkie.png")),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    hintText: 'Enter your email',
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    hintText: 'Enter your Password',
                    icon: Icon(
                      Icons.lock_outlined,
                      color: Colors.grey,
                    ),
                    suffixIcon:
                        Icon(Icons.visibility_outlined, color: Colors.grey),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 40),
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
            ],
          ),
        ),
      ),
    );
  }
}
