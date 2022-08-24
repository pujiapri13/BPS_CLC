import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeContent(),
    ));

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = 633.5;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          //animasi atas
          Container(
            width: screenWidth,
            height: screenHeight * 0.24,
            color: Colors.amber,
            child: const Center(child: Text('ANIMASI SING DIGAWE AMAR')),
          ),

          Row(
            children: <Widget>[
              //satu
              Container(
                width: screenWidth * 0.55,
                height: screenHeight * 0.19,
                color: Colors.redAccent,
                child: const Center(
                  child: Text('INFLASI'),
                ),
              ),
              //dua
              Container(
                width: screenWidth * 0.45,
                height: screenHeight * 0.19,
                color: Colors.red,
                child: const Center(
                  child: Text('KETIMPANGAN'),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              //tiga
              Container(
                width: screenWidth * 0.45,
                height: screenHeight * 0.19,
                color: Colors.red,
                child: const Center(
                  child: Text('PENGANGGURAN'),
                ),
              ),
              //empat
              Container(
                width: screenWidth * 0.55,
                height: screenHeight * 0.19,
                color: Colors.redAccent,
                child: const Center(
                  child: Text('PERTUMBUHAN EKONOMI'),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              //lima
              Container(
                width: screenWidth * 0.55,
                height: screenHeight * 0.19,
                color: Colors.redAccent,
                child: const Center(
                  child: Text('TENAGA KERJA'),
                ),
              ),
              //enam
              Container(
                width: screenWidth * 0.45,
                height: screenHeight * 0.19,
                color: Colors.red,
                child: const Center(
                  child: Text('KEMISKINAN'),
                ),
              ),
            ],
          ),
          //tujuh
          Container(
            width: screenWidth,
            height: screenHeight * 0.19,
            color: const Color.fromARGB(255, 114, 19, 12),
            child: const Center(
              child: Text('JUMLAH PENDUDUK'),
            ),
          ),
        ],
      ),
    );
  }
}
