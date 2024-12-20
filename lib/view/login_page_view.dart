import 'package:flutter/material.dart';

import 'home_page_view.dart';
import 'register_page_view.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image.asset(
                'assets/images/gemlogo.jpg',
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Login to Gemsera',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat-Bold', // Apply Montserrat-Bold font
                color: Color.fromARGB(255, 193, 127, 29),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(
                  fontFamily:
                      'Montserrat-Italic', // Apply Montserrat-Italic font
                ),
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(
                  fontFamily:
                      'Montserrat-Italic', // Apply Montserrat-Italic font
                ),
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate directly to HomePageView
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePageView()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 193, 127, 29),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-Bold', // Apply Montserrat-Bold font
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                // Navigate to RegisterPageView
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterPageView()),
                );
              },
              child: const Text(
                'Don’t have an account? Register',
                style: TextStyle(
                  fontFamily: 'Montserrat-Italic', // Apply Montserrat-Bold font
                  color: Color.fromARGB(255, 193, 127, 29),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
