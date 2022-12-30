import 'package:bps_cilacap/restAPI/repository_penduduk.dart';
import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';

class carouselSlider2 extends StatefulWidget {
  const carouselSlider2({super.key});

  @override
  State<carouselSlider2> createState() => _carouselSlider2State();
}

RepositoryJumlahPenduduk repositoryJumlahPenduduk = RepositoryJumlahPenduduk();

class _carouselSlider2State extends State<carouselSlider2> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryJumlahPenduduk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenduduk = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun = isipenduduk[index = 0].created_at[0] +
                  isipenduduk[index = 0].created_at[1] +
                  isipenduduk[index = 0].created_at[2] +
                  isipenduduk[index = 0].created_at[3];
              int lkTotal = int.parse(isipenduduk[index = 0].total);
              int prTotal = int.parse(isipenduduk[index = 1].total);
              int jmlTotal = lkTotal + prTotal;
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
                          'assets/images/carousel/hasil_sp_icon.png',
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
                              "Hasil SP$tahun",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Laki - laki = $lkTotal Jiwa",
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Perempuan = $prTotal Jiwa",
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Jumlah Total = ${jmlTotal} Jiwa",
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


// ignore_for_file: camel_case_types