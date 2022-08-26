import 'dart:async';
import 'package:flutter/material.dart';
import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(240, 240, 240, 240),
        width: MediaQuery.of(context).size.width,
        child: Container(
            margin: const EdgeInsets.all(50),
            child: Center(
                child: Image.asset(
              './assets/images/splash1.jpeg',
              width: 600,
              height: 400,
            ))),
      ),
    );
  }
}
