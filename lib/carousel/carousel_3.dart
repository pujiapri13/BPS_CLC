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
              String tahun2 = isiipm[index = 0].created_at[0] +
                  isiipm[index = 0].created_at[1] +
                  isiipm[index = 0].created_at[2] +
                  isiipm[index = 0].created_at[3];
              String tahun = isiipm[index = 1].created_at[0] +
                  isiipm[index = 1].created_at[1] +
                  isiipm[index = 1].created_at[2] +
                  isiipm[index = 1].created_at[3];

              double ipmA = double.parse(isiipm[index = 1].ipm);
              double ipmB = double.parse(isiipm[index = 0].ipm);
              double pertumbuhan = ipmB - ipmA;

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
                              "IPM Kabupaten Cilacap tahun $tahun2",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          SizedBox(
                            width: screenWidth * 0.9,
                            child: Text(
                              "Tercatat poin IPM sebesar ${ipmB.toStringAsFixed(2)} atau naik ${pertumbuhan.toStringAsFixed(2)} poin dari $tahun yang tercatat sebesar ${ipmA.toStringAsFixed(2)}",
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
