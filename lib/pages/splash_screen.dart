import 'dart:async';
import 'package:chat/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset(
                'images/monkey.png',
                height: 120,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Start Communicating',
            style: TextStyle(color: Colors.white,
                fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 3),
          ),
          const SizedBox(
            height: 20,
          ),

          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(
              'Made by Himaanshi 🖤',
              style: TextStyle(color: Colors.white,
                  fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 3),
            ),
          ),
        ],
      ),
    );
  }
}
