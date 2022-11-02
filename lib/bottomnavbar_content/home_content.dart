// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/carousel/carousel_1.dart';
import 'package:bps_cilacap/carousel/carousel_2.dart';
import 'package:bps_cilacap/carousel/carousel_3.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan_content.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan_content.dart';
import 'package:bps_cilacap/homescreen_menu/pengangguran_content.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi.dart';
import 'package:bps_cilacap/homescreen_menu/tenaga_kerja.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../homescreen_menu/inflasi_content.dart';
import '../homescreen_menu/jumlah_penduduk.dart';

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
  final List<Widget> carouselList = [
    const carouselSlider1(),
    const carouselSlider2(),
    const carouselSlider3(),
  ];
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
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
                child: Column(
                  children: [
                    Expanded(
                      child: CarouselSlider(
                        items: carouselList,
                        carouselController: _controller,
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            height: screenHeight * 0.20,
                            disableCenter: true,
                            onPageChanged: (index, reason) {
                              setState(() {});
                            }),
                      ),
                    ),
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
                          Container(
                            padding: const EdgeInsets.only(right: 2),
                            width: screenWidth * 0.55,
                            height: screenHeight * 0.15,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(45, 192, 201, 1),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const inflasiContent();
                                    },
                                  ),
                                );
                              },
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 5,
                              //       child: SizedBox(
                              //         width: 100,
                              //         height: 100,
                              //         child: Image.asset(
                              //           'assets/images/homecontent/inflasi_icon.png',
                              //         ),
                              //       ),
                              //     ),
                              //     const Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 1,
                              //       child: Text(
                              //         'INFLASI',
                              //         style: TextStyle(
                              //             fontFamily: 'SuezOne',
                              //             fontWeight: FontWeight.w400,
                              //             color: Color.fromRGBO(1, 1, 1, 0.6),
                              //             fontSize: 14),
                              //         textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              child: Image.asset(
                                'assets/images/inflasi.png',
                              ),
                            ),
                          ),
                          // //dua
                          SizedBox(
                            width: screenWidth * 0.45,
                            height: screenHeight * 0.15,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(45, 192, 201, 0.65),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const ketimpanganContent();
                                  },
                                ));
                              },
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 5,
                              //       child: SizedBox(
                              //         height: 100,
                              //         width: 100,
                              //         child: Image.asset(
                              //           'assets/images/homecontent/ketimpangan_icon.png',
                              //         ),
                              //       ),
                              //     ),
                              //     const Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 1,
                              //       child: Text(
                              //         'KETIMPANGAN',
                              //         style: TextStyle(
                              //             fontFamily: 'SuezOne',
                              //             fontWeight: FontWeight.w400,
                              //             color: Color.fromRGBO(
                              //                 255, 255, 255, 0.6),
                              //             fontSize: 14),
                              //         textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              child: Image.asset(
                                'assets/images/ketimpangan.png',
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
                            padding: const EdgeInsets.only(top: 2),
                            width: screenWidth * 0.45,
                            height: screenHeight * 0.15,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(45, 192, 201, 0.65),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const pengangguranContent();
                                    },
                                  ),
                                );
                              },
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 5,
                              //       child: SizedBox(
                              //         height: 100,
                              //         width: 100,
                              //         child: Image.asset(
                              //           'assets/images/homecontent/pengangguran_icon.png',
                              //         ),
                              //       ),
                              //     ),
                              //     const Flexible(
                              //       flex: 1,
                              //       fit: FlexFit.tight,
                              //       child: Text(
                              //         'PENGANGGURAN',
                              //         style: TextStyle(
                              //             fontFamily: 'SuezOne',
                              //             fontWeight: FontWeight.w400,
                              //             color: Color.fromRGBO(
                              //                 255, 255, 255, 0.6),
                              //             fontSize: 14),
                              //         textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              child:
                                  Image.asset('assets/images/pengangguran.png'),
                            ),
                          ),
                          //empat
                          Container(
                            padding: const EdgeInsets.only(left: 2, top: 2),
                            width: screenWidth * 0.55,
                            height: screenHeight * 0.15,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(45, 192, 201, 1),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(0)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const pertumbuhanEkonomi();
                                  },
                                ));
                              },
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 5,
                              //       child: SizedBox(
                              //         width: 100,
                              //         height: 100,
                              //         child: Image.asset(
                              //           'assets/images/homecontent/pertumbuhan_ekonomi_icon.png',
                              //         ),
                              //       ),
                              //     ),
                              //     const Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 1,
                              //       child: Text(
                              //         'PERTUMBUHAN EKONOMI',
                              //         style: TextStyle(
                              //             color: Color.fromRGBO(1, 1, 1, 0.6),
                              //             fontSize: 13,
                              //             fontFamily: 'SuezOne'),
                              //         textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              child: Image.asset(
                                  'assets/images/pertumbuhan_ekonomi.png'),
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
                            padding: const EdgeInsets.only(top: 2, right: 2),
                            width: screenWidth * 0.60,
                            height: screenHeight * 0.15,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(45, 192, 201, 1),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const tenagaKerja();
                                  },
                                ));
                              },
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Flexible(
                              //       flex: 5,
                              //       fit: FlexFit.tight,
                              //       child: SizedBox(
                              //         width: 100,
                              //         height: 100,
                              //         child: Image.asset(
                              //           'assets/images/homecontent/ketenagakerjaan_icon.png',
                              //           width: 50,
                              //           height: 50,
                              //         ),
                              //       ),
                              //     ),
                              //     const Flexible(
                              //       fit: FlexFit.tight,
                              //       flex: 1,
                              //       child: Text(
                              //         'KETENAGAKERJAAN',
                              //         style: TextStyle(
                              //             color: Color.fromRGBO(1, 1, 1, 0.6),
                              //             fontSize: 13,
                              //             fontFamily: 'SuezOne'),
                              //         textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              child: Image.asset(
                                  'assets/images/ketenagakerjaan.png'),
                            ),
                          ),
                          //empat
                          Container(
                            padding: const EdgeInsets.only(top: 2),
                            width: screenWidth * 0.40,
                            height: screenHeight * 0.15,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(45, 192, 201, 0.65),
                                ),
                                shadowColor: MaterialStateProperty.all(
                                  Colors.transparent,
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(5)),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const kemiskinanContent();
                                  },
                                ));
                              },
                              // child: Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Flexible(
                              //       flex: 4,
                              //       child: SizedBox(
                              //         height: 100,
                              //         width: 100,
                              //         child: Image.asset(
                              //           'assets/images/homecontent/kemiskinan_icon.png',
                              //           width: 50,
                              //           height: 50,
                              //         ),
                              //       ),
                              //     ),
                              //     const Flexible(
                              //       flex: 1,
                              //       child: Text(
                              //         'KEMISKINAN',
                              //         style: TextStyle(
                              //             color: Color.fromRGBO(
                              //                 255, 255, 255, 0.6),
                              //             fontSize: 13,
                              //             fontFamily: 'SuezOne'),
                              //         textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              child: Image.asset(
                                'assets/images/kemiskinan.png',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 2),
                        width: screenWidth,
                        height: screenHeight * 0.5,
                        child: Container(
                          height: screenHeight * 0.5,
                          color: const Color.fromRGBO(45, 149, 201, 1),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shadowColor: MaterialStateProperty.all(
                                Colors.transparent,
                              ),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(5)),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const jumlahPenduduk();
                                },
                              ));
                            },
                            // child: Column(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Flexible(
                            //       flex: 5,
                            //       fit: FlexFit.tight,
                            //       child: SizedBox(
                            //         width: 100,
                            //         height: 100,
                            //         child: Image.asset(
                            //           'assets/images/homecontent/jumlah_penduduk_icon.png',
                            //           width: 50,
                            //           height: 50,
                            //         ),
                            //       ),
                            //     ),
                            //     const Flexible(
                            //       flex: 1,
                            //       child: Text(
                            //         'JUMLAH PENDUDUK',
                            //         style: TextStyle(
                            //             color: Color.fromRGBO(1, 1, 1, 0.6),
                            //             fontSize: 13,
                            //             fontFamily: 'SuezOne'),
                            //         textAlign: TextAlign.center,
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            child: Image.asset(
                                'assets/images/jumlah_penduduk.png'),
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
