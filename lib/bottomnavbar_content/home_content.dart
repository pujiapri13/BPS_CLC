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
              child: Container(
                margin: const EdgeInsets.only(top: 0),
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
              flex: 60,
              fit: FlexFit.tight,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight * 0.6,
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.15,
                      child: Row(
                        children: <Widget>[
                          //satu
                          Container(
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
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/inflasi.png',
                                  ),
                                  const Text(
                                    'INFLASI',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // //dua
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(left: 1),
                              width: screenWidth * 0.40,
                              height: screenHeight * 0.15,
                              color: const Color.fromRGBO(45, 192, 201, 0.65),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const inflasiContent();
                                    },
                                  ));
                                },
                                child: Column(
                                  children: const [
                                    // Image.asset(
                                    //   'assets/images/pengangguran.png',
                                    // ),
                                    Text(
                                      'KETIMPANGAN',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.15,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            width: screenWidth * 0.38,
                            height: screenHeight * 0.15,
                            color: const Color.fromRGBO(45, 192, 201, 0.65),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/pengangguran.png',
                                ),
                                const Text(
                                  'PENGANGGURAN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          //empat
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(left: 1, top: 1),
                              width: screenWidth * 0.62,
                              height: screenHeight * 0.15,
                              color: const Color.fromRGBO(45, 192, 201, 1),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/pertumbuhan_ekonomi.png',
                                  ),
                                  const Text(
                                    'PERTUMBUHAN EKONOMI',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.15,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            width: screenWidth * 0.70,
                            height: screenHeight * 0.15,
                            color: const Color.fromRGBO(45, 192, 201, 1),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/tenaga_kerja.png',
                                ),
                                const Text(
                                  'TENAGA KERJA',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          //empat
                          Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(left: 1, top: 1),
                              width: screenWidth * 0.30,
                              height: screenHeight * 0.15,
                              color: const Color.fromRGBO(45, 192, 201, 0.65),
                              child: const Center(
                                child: Text('KEMISKINAN'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top: 1),
                        width: screenWidth,
                        height: screenHeight * 0.5,
                        child: Container(
                          height: screenHeight * 0.5,
                          color: const Color.fromRGBO(45, 149, 201, 1),
                          child: const Center(
                            child: Text('JUMLAH PENDUDUK'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
