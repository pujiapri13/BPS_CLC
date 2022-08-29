// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../homescreen_menu/inflasi_content.dart';

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
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            //animasi atas
            Flexible(
              fit: FlexFit.tight,
              flex: 20,
              child: SizedBox(
                height: screenHeight * 0.20,
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
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: screenHeight * 0.20,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        reverse: false,
                      ),
                    )
                  ],
                ),
              ),
            ),

            Flexible(
              fit: FlexFit.tight,
              flex: 15,
              child: Row(
                children: <Widget>[
                  //satu
                  Flexible(
                    child: Container(
                      width: screenWidth * 0.60,
                      height: screenHeight * 0.15,
                      color: const Color.fromRGBO(45, 192, 201, 1),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const inflasiContent();
                            },
                          ));
                        },
                        child: const Text(
                          'INFLASI',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  //dua
                  Container(
                    width: screenWidth * 0.40,
                    height: screenHeight * 0.15,
                    color: const Color.fromRGBO(45, 192, 201, 0.65),
                    child: const Center(
                      child: Text('KETIMPANGAN'),
                    ),
                  ),
                ],
              ),
            ),

            Flexible(
              fit: FlexFit.tight,
              flex: 15,
              child: Row(
                children: <Widget>[
                  //tiga
                  Container(
                    width: screenWidth * 0.38,
                    height: screenHeight * 0.15,
                    color: const Color.fromRGBO(45, 192, 201, 0.65),
                    child: const Center(
                      child: Text('PENGANGGURAN'),
                    ),
                  ),
                  //empat
                  Container(
                    width: screenWidth * 0.62,
                    height: screenHeight * 0.15,
                    color: const Color.fromRGBO(45, 192, 201, 1),
                    child: const Center(
                      child: Text('PERTUMBUHAN EKONOMI'),
                    ),
                  ),
                ],
              ),
            ),

            Flexible(
              fit: FlexFit.tight,
              flex: 15,
              child: Row(
                children: <Widget>[
                  //lima
                  Container(
                    width: screenWidth * 0.70,
                    height: screenHeight * 0.15,
                    color: const Color.fromRGBO(45, 192, 201, 1),
                    child: const Center(
                      child: Text('TENAGA KERJA'),
                    ),
                  ),
                  //enam
                  Container(
                    width: screenWidth * 0.30,
                    height: screenHeight * 0.15,
                    color: const Color.fromRGBO(45, 192, 201, 0.65),
                    child: const Center(
                      child: Text('KEMISKINAN'),
                    ),
                  ),
                ],
              ),
            ),
            //tujuh
            Flexible(
              fit: FlexFit.tight,
              flex: 15,
              child: Container(
                height: screenHeight * 0.15,
                color: const Color.fromRGBO(45, 149, 201, 1),
                child: const Center(
                  child: Text('JUMLAH PENDUDUK'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
