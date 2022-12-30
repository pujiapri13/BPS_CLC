import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:flutter/material.dart';

class carouselSlider1 extends StatefulWidget {
  const carouselSlider1({super.key});

  @override
  State<carouselSlider1> createState() => _carouselSlider1State();
}

RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();

class _carouselSlider1State extends State<carouselSlider1> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryinflasikota.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun = isiinflasi[index = 0].updated_at[0] +
                  isiinflasi[index = 0].updated_at[1] +
                  isiinflasi[index = 0].updated_at[2] +
                  isiinflasi[index = 0].updated_at[3];
              double mtom1 = double.parse(isiinflasi[index = 0].mtom);
              double yony1 = double.parse(isiinflasi[index = 0].ytoy);
              double ytod1 = double.parse(isiinflasi[index = 0].ytod);
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
                              child: Text(
                                "Inflasi " + tahun,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Inflasi Month to Month = " +
                                    mtom1.toStringAsFixed(2) +
                                    "%",
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Inflasi Year to Date = " +
                                    ytod1.toStringAsFixed(2) +
                                    "%",
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Inflasi Year on Year = " +
                                    yony1.toStringAsFixed(2) +
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