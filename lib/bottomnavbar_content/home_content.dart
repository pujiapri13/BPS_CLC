import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  final List<String> carouselList = ["Satu", "Dua", "Tiga"];

  @override
  Widget build(BuildContext context) {
    const screenHeight = 633.5;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          //animasi atas
          SizedBox(
            height: screenHeight * 0.24,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  items: carouselList.map((e) {
                    return Builder(
                      builder: (context) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeOutBack,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 6, 107, 133),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: screenHeight * 0.24,
                    viewportFraction: 0.98,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    reverse: false,
                  ),
                )
              ],
            ),
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
