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
    return Scaffold(
      body: Container(
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
                  Flexible(
                    child: FutureBuilder(
                      future: repositoryipm.getData(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List isiipm = snapshot.data as List;
                          return PageView.builder(
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "IPM Kabupaten Cilacap tahun " +
                                        isiipm[index = 0].tanggal[0] +
                                        isiipm[index = 0].tanggal[1] +
                                        isiipm[index = 0].tanggal[2] +
                                        isiipm[index = 0].tanggal[3],
                                    style:
                                        const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              );
                            },
                          );
                        }
                        if (snapshot.hasError) {
                          return const Text("Database Error");
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Tercatat poin IPM sebesar "
                      "70,42"
                      " atau naik "
                      "0.47"
                      " poin dari "
                      "2021"
                      "yang tercatat sebesar "
                      "69,95",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
