// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_inflasi.dart';
import 'package:flutter/material.dart';

class carouselSlider1 extends StatefulWidget {
  const carouselSlider1({super.key});

  @override
  State<carouselSlider1> createState() => _carouselSlider1State();
}

RepositoryInflasi repositoryinflasi = RepositoryInflasi();

class _carouselSlider1State extends State<carouselSlider1> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryinflasi.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tanggal = isiinflasi[index = 0].tanggal;
              double mtom1 = 0.71;
              double yony1 = 6.47;
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(136, 159, 176, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 3, bottom: 3),
                width: screenWidth,
                height: screenHeight,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 3,
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          'assets/images/carousel/inflasi_bulanan_icon.png',
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                "Inflasi Bulanan",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Inflasi " +
                                    tanggal +
                                    " = " +
                                    mtom1.toString() +
                                    "%",
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Inflasi Year on Year " +
                                    tanggal +
                                    " = " +
                                    yony1.toString() +
                                    "%",
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Tidak Ada Kabar Terbaru");
        } else {
          return Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(136, 159, 176, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            width: screenWidth,
            height: screenHeight,
          );
        }
      },
    );
  }
}
        



// ignore_for_file: camel_case_types