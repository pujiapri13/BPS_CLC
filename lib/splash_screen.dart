import 'dart:async';

import 'package:bps_cilacap/home_screen.dart';
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
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            flex: 20,
            child: Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              child: Image.asset(
                './assets/images/SplashscreenASAP.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: CircularProgressIndicator(
              strokeWidth: 1,
            ),
          ),
          const Divider(
            color: Colors.transparent,
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.white, child: const Text("versi 1.0.0")),
          )
        ],
      ),
    );
  }
}
