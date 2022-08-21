// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MaterialApp(
    title: "BPS Cilacap",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}
