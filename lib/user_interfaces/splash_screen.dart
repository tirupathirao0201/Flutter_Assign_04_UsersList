import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peopleinfo/user_interfaces/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => UserInput())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 130, 238, 198),
            Color.fromARGB(255, 181, 147, 175),
          ])),
      child: const Center(
        child: Text(
          "Welcome to Splash Screen",
          style: TextStyle(fontSize: 25, color: Colors.orange),
        ),
      ),
    );
  }
}
