// ignore_for_file: camel_case_types, unused_local_variable, duplicate_ignore, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_kemiskinan_kota.dart';
import 'package:flutter/material.dart';

class KemiskinanKabupatenKota extends StatefulWidget {
  const KemiskinanKabupatenKota({Key? key}) : super(key: key);

  @override
  State<KemiskinanKabupatenKota> createState() =>
      _KemiskinanKabupatenKotaState();
}

RepositoryKemiskinanKota repositoryKemiskinanKota = RepositoryKemiskinanKota();

class _KemiskinanKabupatenKotaState extends State<KemiskinanKabupatenKota> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'PERKEMBANGAN KEMISKINAN',
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Center(
              child: Icon(
                BackIcons.circle_arrow,
                size: 40,
              ),
            ),
          ),
        ),
        body: FutureBuilder(
          future: repositoryKemiskinanKota.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isikemiskinan = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th1 = isikemiskinan[index = 0].created_at[0] +
                      isikemiskinan[index = 0].created_at[1] +
                      isikemiskinan[index = 0].created_at[2] +
                      isikemiskinan[index = 0].created_at[3];

                  String kabkota1 = isikemiskinan[index = 0].kabkota;
                  String kabkota2 = isikemiskinan[index = 1].kabkota;
                  String kabkota3 = isikemiskinan[index = 2].kabkota;
                  String kabkota4 = isikemiskinan[index = 3].kabkota;
                  String kabkota5 = isikemiskinan[index = 4].kabkota;
                  String kabkota6 = isikemiskinan[index = 5].kabkota;
                  String kabkota7 = isikemiskinan[index = 6].kabkota;
                  String kabkota8 = isikemiskinan[index = 7].kabkota;
                  String kabkota9 = isikemiskinan[index = 8].kabkota;
                  String kabkota10 = isikemiskinan[index = 9].kabkota;
                  String kabkota11 = isikemiskinan[index = 10].kabkota;
                  String kabkota12 = isikemiskinan[index = 11].kabkota;
                  String kabkota13 = isikemiskinan[index = 12].kabkota;
                  String kabkota14 = isikemiskinan[index = 13].kabkota;
                  String kabkota15 = isikemiskinan[index = 14].kabkota;
                  String kabkota16 = isikemiskinan[index = 15].kabkota;
                  String kabkota17 = isikemiskinan[index = 16].kabkota;
                  String kabkota18 = isikemiskinan[index = 17].kabkota;
                  String kabkota19 = isikemiskinan[index = 18].kabkota;
                  String kabkota20 = isikemiskinan[index = 19].kabkota;
                  String kabkota21 = isikemiskinan[index = 20].kabkota;
                  String kabkota22 = isikemiskinan[index = 21].kabkota;
                  String kabkota23 = isikemiskinan[index = 22].kabkota;
                  String kabkota24 = isikemiskinan[index = 23].kabkota;
                  String kabkota25 = isikemiskinan[index = 24].kabkota;
                  String kabkota26 = isikemiskinan[index = 25].kabkota;
                  String kabkota27 = isikemiskinan[index = 26].kabkota;
                  String kabkota28 = isikemiskinan[index = 27].kabkota;
                  String kabkota29 = isikemiskinan[index = 28].kabkota;
                  String kabkota30 = isikemiskinan[index = 29].kabkota;
                  String kabkota31 = isikemiskinan[index = 30].kabkota;
                  String kabkota32 = isikemiskinan[index = 31].kabkota;
                  String kabkota33 = isikemiskinan[index = 32].kabkota;
                  String kabkota34 = isikemiskinan[index = 33].kabkota;
                  String kabkota35 = isikemiskinan[index = 34].kabkota;
                  String kabkota36 = isikemiskinan[index = 35].kabkota;

                  double pmk1 =
                      double.parse(isikemiskinan[index = 0].pddk_mskn);
                  double pmk2 =
                      double.parse(isikemiskinan[index = 1].pddk_mskn);
                  double pmk3 =
                      double.parse(isikemiskinan[index = 2].pddk_mskn);
                  double pmk4 =
                      double.parse(isikemiskinan[index = 3].pddk_mskn);
                  double pmk5 =
                      double.parse(isikemiskinan[index = 4].pddk_mskn);
                  double pmk6 =
                      double.parse(isikemiskinan[index = 5].pddk_mskn);
                  double pmk7 =
                      double.parse(isikemiskinan[index = 6].pddk_mskn);
                  double pmk8 =
                      double.parse(isikemiskinan[index = 7].pddk_mskn);
                  double pmk9 =
                      double.parse(isikemiskinan[index = 8].pddk_mskn);
                  double pmk10 =
                      double.parse(isikemiskinan[index = 9].pddk_mskn);
                  double pmk11 =
                      double.parse(isikemiskinan[index = 10].pddk_mskn);
                  double pmk12 =
                      double.parse(isikemiskinan[index = 11].pddk_mskn);
                  double pmk13 =
                      double.parse(isikemiskinan[index = 12].pddk_mskn);
                  double pmk14 =
                      double.parse(isikemiskinan[index = 13].pddk_mskn);
                  double pmk15 =
                      double.parse(isikemiskinan[index = 14].pddk_mskn);
                  double pmk16 =
                      double.parse(isikemiskinan[index = 15].pddk_mskn);
                  double pmk17 =
                      double.parse(isikemiskinan[index = 16].pddk_mskn);
                  double pmk18 =
                      double.parse(isikemiskinan[index = 17].pddk_mskn);
                  double pmk19 =
                      double.parse(isikemiskinan[index = 17].pddk_mskn);
                  double pmk20 =
                      double.parse(isikemiskinan[index = 18].pddk_mskn);
                  double pmk21 =
                      double.parse(isikemiskinan[index = 19].pddk_mskn);
                  double pmk22 =
                      double.parse(isikemiskinan[index = 20].pddk_mskn);
                  double pmk23 =
                      double.parse(isikemiskinan[index = 21].pddk_mskn);
                  double pmk24 =
                      double.parse(isikemiskinan[index = 23].pddk_mskn);
                  double pmk25 =
                      double.parse(isikemiskinan[index = 24].pddk_mskn);
                  double pmk26 =
                      double.parse(isikemiskinan[index = 25].pddk_mskn);
                  double pmk27 =
                      double.parse(isikemiskinan[index = 26].pddk_mskn);
                  double pmk28 =
                      double.parse(isikemiskinan[index = 27].pddk_mskn);
                  double pmk29 =
                      double.parse(isikemiskinan[index = 28].pddk_mskn);
                  double pmk30 =
                      double.parse(isikemiskinan[index = 29].pddk_mskn);
                  double pmk31 =
                      double.parse(isikemiskinan[index = 30].pddk_mskn);
                  double pmk32 =
                      double.parse(isikemiskinan[index = 31].pddk_mskn);
                  double pmk33 =
                      double.parse(isikemiskinan[index = 32].pddk_mskn);
                  double pmk34 =
                      double.parse(isikemiskinan[index = 33].pddk_mskn);
                  double pmk35 =
                      double.parse(isikemiskinan[index = 34].pddk_mskn);
                  double pmk36 =
                      double.parse(isikemiskinan[index = 35].pddk_mskn);

                  double p0_1 = double.parse(isikemiskinan[index = 0].p0);
                  double p0_2 = double.parse(isikemiskinan[index = 1].p0);
                  double p0_3 = double.parse(isikemiskinan[index = 2].p0);
                  double p0_4 = double.parse(isikemiskinan[index = 3].p0);
                  double p0_5 = double.parse(isikemiskinan[index = 4].p0);
                  double p0_6 = double.parse(isikemiskinan[index = 5].p0);
                  double p0_7 = double.parse(isikemiskinan[index = 6].p0);
                  double p0_8 = double.parse(isikemiskinan[index = 7].p0);
                  double p0_9 = double.parse(isikemiskinan[index = 8].p0);
                  double p0_10 = double.parse(isikemiskinan[index = 9].p0);
                  double p0_11 = double.parse(isikemiskinan[index = 10].p0);
                  double p0_12 = double.parse(isikemiskinan[index = 11].p0);
                  double p0_13 = double.parse(isikemiskinan[index = 12].p0);
                  double p0_14 = double.parse(isikemiskinan[index = 13].p0);
                  double p0_15 = double.parse(isikemiskinan[index = 14].p0);
                  double p0_16 = double.parse(isikemiskinan[index = 15].p0);
                  double p0_17 = double.parse(isikemiskinan[index = 16].p0);
                  double p0_18 = double.parse(isikemiskinan[index = 17].p0);
                  double p0_19 = double.parse(isikemiskinan[index = 18].p0);
                  double p0_20 = double.parse(isikemiskinan[index = 19].p0);
                  double p0_21 = double.parse(isikemiskinan[index = 20].p0);
                  double p0_22 = double.parse(isikemiskinan[index = 21].p0);
                  double p0_23 = double.parse(isikemiskinan[index = 22].p0);
                  double p0_24 = double.parse(isikemiskinan[index = 23].p0);
                  double p0_25 = double.parse(isikemiskinan[index = 24].p0);
                  double p0_26 = double.parse(isikemiskinan[index = 25].p0);
                  double p0_27 = double.parse(isikemiskinan[index = 26].p0);
                  double p0_28 = double.parse(isikemiskinan[index = 27].p0);
                  double p0_29 = double.parse(isikemiskinan[index = 28].p0);
                  double p0_30 = double.parse(isikemiskinan[index = 29].p0);
                  double p0_31 = double.parse(isikemiskinan[index = 30].p0);
                  double p0_32 = double.parse(isikemiskinan[index = 31].p0);
                  double p0_33 = double.parse(isikemiskinan[index = 32].p0);
                  double p0_34 = double.parse(isikemiskinan[index = 33].p0);
                  double p0_35 = double.parse(isikemiskinan[index = 34].p0);
                  double p0_36 = double.parse(isikemiskinan[index = 35].p0);

                  double gk1 = double.parse(isikemiskinan[index = 0].gk);
                  double gk2 = double.parse(isikemiskinan[index = 1].gk);
                  double gk3 = double.parse(isikemiskinan[index = 2].gk);
                  double gk4 = double.parse(isikemiskinan[index = 3].gk);
                  double gk5 = double.parse(isikemiskinan[index = 4].gk);
                  double gk6 = double.parse(isikemiskinan[index = 5].gk);
                  double gk7 = double.parse(isikemiskinan[index = 6].gk);
                  double gk8 = double.parse(isikemiskinan[index = 7].gk);
                  double gk9 = double.parse(isikemiskinan[index = 8].gk);
                  double gk10 = double.parse(isikemiskinan[index = 9].gk);
                  double gk11 = double.parse(isikemiskinan[index = 10].gk);
                  double gk12 = double.parse(isikemiskinan[index = 11].gk);
                  double gk13 = double.parse(isikemiskinan[index = 12].gk);
                  double gk14 = double.parse(isikemiskinan[index = 13].gk);
                  double gk15 = double.parse(isikemiskinan[index = 14].gk);
                  double gk16 = double.parse(isikemiskinan[index = 15].gk);
                  double gk17 = double.parse(isikemiskinan[index = 16].gk);
                  double gk18 = double.parse(isikemiskinan[index = 17].gk);
                  double gk19 = double.parse(isikemiskinan[index = 18].gk);
                  double gk20 = double.parse(isikemiskinan[index = 19].gk);
                  double gk21 = double.parse(isikemiskinan[index = 20].gk);
                  double gk22 = double.parse(isikemiskinan[index = 21].gk);
                  double gk23 = double.parse(isikemiskinan[index = 22].gk);
                  double gk24 = double.parse(isikemiskinan[index = 23].gk);
                  double gk25 = double.parse(isikemiskinan[index = 24].gk);
                  double gk26 = double.parse(isikemiskinan[index = 25].gk);
                  double gk27 = double.parse(isikemiskinan[index = 26].gk);
                  double gk28 = double.parse(isikemiskinan[index = 27].gk);
                  double gk29 = double.parse(isikemiskinan[index = 28].gk);
                  double gk30 = double.parse(isikemiskinan[index = 29].gk);
                  double gk31 = double.parse(isikemiskinan[index = 30].gk);
                  double gk32 = double.parse(isikemiskinan[index = 31].gk);
                  double gk33 = double.parse(isikemiskinan[index = 32].gk);
                  double gk34 = double.parse(isikemiskinan[index = 33].gk);
                  double gk35 = double.parse(isikemiskinan[index = 34].gk);
                  double gk36 = double.parse(isikemiskinan[index = 35].gk);

                  double p1_1 = double.parse(isikemiskinan[index = 0].p1);
                  double p1_2 = double.parse(isikemiskinan[index = 1].p1);
                  double p1_3 = double.parse(isikemiskinan[index = 2].p1);
                  double p1_4 = double.parse(isikemiskinan[index = 3].p1);
                  double p1_5 = double.parse(isikemiskinan[index = 4].p1);
                  double p1_6 = double.parse(isikemiskinan[index = 5].p1);
                  double p1_7 = double.parse(isikemiskinan[index = 6].p1);
                  double p1_8 = double.parse(isikemiskinan[index = 7].p1);
                  double p1_9 = double.parse(isikemiskinan[index = 8].p1);
                  double p1_10 = double.parse(isikemiskinan[index = 9].p1);
                  double p1_11 = double.parse(isikemiskinan[index = 10].p1);
                  double p1_12 = double.parse(isikemiskinan[index = 11].p1);
                  double p1_13 = double.parse(isikemiskinan[index = 12].p1);
                  double p1_14 = double.parse(isikemiskinan[index = 13].p1);
                  double p1_15 = double.parse(isikemiskinan[index = 14].p1);
                  double p1_16 = double.parse(isikemiskinan[index = 15].p1);
                  double p1_17 = double.parse(isikemiskinan[index = 16].p1);
                  double p1_18 = double.parse(isikemiskinan[index = 17].p1);
                  double p1_19 = double.parse(isikemiskinan[index = 18].p1);
                  double p1_20 = double.parse(isikemiskinan[index = 19].p1);
                  double p1_21 = double.parse(isikemiskinan[index = 20].p1);
                  double p1_22 = double.parse(isikemiskinan[index = 21].p1);
                  double p1_23 = double.parse(isikemiskinan[index = 22].p1);
                  double p1_24 = double.parse(isikemiskinan[index = 23].p1);
                  double p1_25 = double.parse(isikemiskinan[index = 24].p1);
                  double p1_26 = double.parse(isikemiskinan[index = 25].p1);
                  double p1_27 = double.parse(isikemiskinan[index = 26].p1);
                  double p1_28 = double.parse(isikemiskinan[index = 27].p1);
                  double p1_29 = double.parse(isikemiskinan[index = 28].p1);
                  double p1_30 = double.parse(isikemiskinan[index = 29].p1);
                  double p1_31 = double.parse(isikemiskinan[index = 30].p1);
                  double p1_32 = double.parse(isikemiskinan[index = 31].p1);
                  double p1_33 = double.parse(isikemiskinan[index = 32].p1);
                  double p1_34 = double.parse(isikemiskinan[index = 33].p1);
                  double p1_35 = double.parse(isikemiskinan[index = 34].p1);
                  double p1_36 = double.parse(isikemiskinan[index = 35].p1);

                  
                  double p2_1 = double.parse(isikemiskinan[index = 0].p2);
                  double p2_2 = double.parse(isikemiskinan[index = 1].p2);
                  double p2_3 = double.parse(isikemiskinan[index = 2].p2);
                  double p2_4 = double.parse(isikemiskinan[index = 3].p2);
                  double p2_5 = double.parse(isikemiskinan[index = 4].p2);
                  double p2_6 = double.parse(isikemiskinan[index = 5].p2);
                  double p2_7 = double.parse(isikemiskinan[index = 6].p2);
                  double p2_8 = double.parse(isikemiskinan[index = 7].p2);
                  double p2_9 = double.parse(isikemiskinan[index = 8].p2);
                  double p2_10 = double.parse(isikemiskinan[index = 9].p2);
                  double p2_11 = double.parse(isikemiskinan[index = 10].p2);
                  double p2_12 = double.parse(isikemiskinan[index = 11].p2);
                  double p2_13 = double.parse(isikemiskinan[index = 12].p2);
                  double p2_14 = double.parse(isikemiskinan[index = 13].p2);
                  double p2_15 = double.parse(isikemiskinan[index = 14].p2);
                  double p2_16 = double.parse(isikemiskinan[index = 15].p2);
                  double p2_17 = double.parse(isikemiskinan[index = 16].p2);
                  double p2_18 = double.parse(isikemiskinan[index = 17].p2);
                  double p2_19 = double.parse(isikemiskinan[index = 18].p2);
                  double p2_20 = double.parse(isikemiskinan[index = 19].p2);
                  double p2_21 = double.parse(isikemiskinan[index = 20].p2);
                  double p2_22 = double.parse(isikemiskinan[index = 21].p2);
                  double p2_23 = double.parse(isikemiskinan[index = 22].p2);
                  double p2_24 = double.parse(isikemiskinan[index = 23].p2);
                  double p2_25 = double.parse(isikemiskinan[index = 24].p2);
                  double p2_26 = double.parse(isikemiskinan[index = 25].p2);
                  double p2_27 = double.parse(isikemiskinan[index = 26].p2);
                  double p2_28 = double.parse(isikemiskinan[index = 27].p2);
                  double p2_29 = double.parse(isikemiskinan[index = 28].p2);
                  double p2_30 = double.parse(isikemiskinan[index = 29].p2);
                  double p2_31 = double.parse(isikemiskinan[index = 30].p2);
                  double p2_32 = double.parse(isikemiskinan[index = 31].p2);
                  double p2_33 = double.parse(isikemiskinan[index = 32].p2);
                  double p2_34 = double.parse(isikemiskinan[index = 33].p2);
                  double p2_35 = double.parse(isikemiskinan[index = 34].p2);
                  double p2_36 = double.parse(isikemiskinan[index = 35].p2);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: Text(
                              "Kemiskinan Kabupaten/Kota Jawa Tengah, Tahun " +
                                  th1.toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 1500,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Text(
                                        "Kabupaten/Kota",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Text(
                                        "Pddk Miskin",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Text(
                                        "P0",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Text(
                                        "GK",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Text(
                                        "P1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.1,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Text(
                                        "P2",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota1,
                                        style: const TextStyle(color: Colors.cyan),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk1.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                        style:
                                            const TextStyle(color: Colors.cyan),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_1.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                        style:
                                            const TextStyle(color: Colors.cyan),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        gk1.toStringAsFixed(3),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.cyan,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_1.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                        style:
                                            const TextStyle(color: Colors.cyan),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_1.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                        style:
                                            const TextStyle(color: Colors.cyan),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //Banyumas
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota2,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk2.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_2.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        gk2.toStringAsFixed(3),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_2.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_2.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //Purbalingga
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota3,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk3.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_3.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        gk3.toStringAsFixed(3),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_3.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_3.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //Banjarnegara
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota4,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk4.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_4.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        gk4.toStringAsFixed(3),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_4.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_4.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //Kebumen
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota5,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk5.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_5.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk5.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_5.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_5.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //Purworejo
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota6,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk6.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_6.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk6.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_6.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_6.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Wonosobo
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota7,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk7.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_7.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        gk7.toStringAsFixed(3),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_7.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_7.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Magelang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota8,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk8.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_8.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk8.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_8.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_8.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Boyolali
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota9,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk9.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_9.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk9.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_9.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_9.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Klaten
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota10,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk10.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_10.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk10.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_10.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_10.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Sukoharjo
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota11,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk11.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_11.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk11.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_11.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_11.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Wonogiri
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota12,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk12.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_12.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk12.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_12.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_12.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Karanganyar
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota13,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk13.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_13.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk13.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_13.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_13.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Sragen
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota14,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk14.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_14.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk14.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_14.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_14.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Grobogan
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota15,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk15.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_15.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk15.toStringAsFixed(2),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_15.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_15.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Blora
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota16,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk16.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_16.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk16.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_16.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_16.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Rembang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota17,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk17.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_17.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk17.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_17.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_17.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Pati
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota18,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk18.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_18.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk18.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_18.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_18.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kudus
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota19,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk19.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_19.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk19.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_19.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_19.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Jepara
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota20,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk20.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_20.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk20.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_20.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_20.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Demak
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota21,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk21.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_21.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk21.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_21.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_21.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Semarang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota22,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk22.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_22.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk22.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_22.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_22.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Temanggung
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota23,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk23.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_23.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk23.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_23.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_23.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kendal
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota24,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk24.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_24.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk24.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_24.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_24.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Batang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota25,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk25.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_25.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk25.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_25.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_25.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Pekalongan
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota26,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk26.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_26.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk26.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_26.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_26.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Pemalang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota27,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk27.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_27.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk27.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_27.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_27.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Tegal
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota28,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk28.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_28.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk28.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_28.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_28.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Brebes
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota29,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk29.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_29.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk29.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_29.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_29.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kota Magelang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota30,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk30.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_30.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk30.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_30.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_30.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kota Surakarta
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota31,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk31.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_31.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk31.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_31.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_31.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kota Salatiga
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota32,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk32.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_32.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk32.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_32.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_32.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kota Semarang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota33,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk33.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_33.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk33.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_33.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_33.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kota Pekalongan
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota34,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk34.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_34.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk34.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_34.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_34.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kota Tegal
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota35,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        pmk35.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_35.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk35.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_35.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_35.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Jateng
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: Text(
                                        kabkota36,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(pmk36.toStringAsFixed(2),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_36.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk36.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_36.toStringAsFixed(2),
                                        style: const TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_36.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
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
              return const Text('Database Error');
            } else {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          },
        ));
  }
}
