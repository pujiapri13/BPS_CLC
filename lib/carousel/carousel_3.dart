// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:flutter/material.dart';

class carouselSlider3 extends StatefulWidget {
  const carouselSlider3({super.key});

  @override
  State<carouselSlider3> createState() => _carouselSlider3State();
}

RepositoryIpm repositoryipm = RepositoryIpm();

class _carouselSlider3State extends State<carouselSlider3> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryipm.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipm = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun = isiipm[index = 0].tanggal[0] +
                  isiipm[index = 0].tanggal[1] +
                  isiipm[index = 0].tanggal[2] +
                  isiipm[index = 0].tanggal[3];
              String tahun2 = isiipm[index = 1].tanggal[0] +
                  isiipm[index = 1].tanggal[1] +
                  isiipm[index = 1].tanggal[2] +
                  isiipm[index = 1].tanggal[3];

              double ipmA = isiipm[index = 0].ipm;
              double ipmB = isiipm[index = 1].ipm;
              double pertumbuhan = isiipm[index = 0].pertumbuhan;

              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(136, 159, 176, 1),
                  borderRadius: BorderRadius.circular(10),
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
                          'assets/images/carousel/ipm_carousel_icon.png',
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
                          SizedBox(
                            width: screenWidth * 0.9,
                            child: Text(
                              "IPM Kabupaten Cilacap tahun $tahun",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          SizedBox(
                            width: screenWidth * 0.9,
                            child: Text(
                              "Tercatat poin IPM sebesar ${ipmA.toStringAsFixed(2)} atau naik ${pertumbuhan.toStringAsFixed(2)} poin dari $tahun2 yang tercatat sebesar ${ipmB.toStringAsFixed(2)}",
                            ),
                          ),
                        ],
                      ),
                    ),
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
              borderRadius: BorderRadius.circular(10),
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
