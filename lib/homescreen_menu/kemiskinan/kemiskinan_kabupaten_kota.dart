// ignore_for_file: camel_case_types, unused_local_variable, duplicate_ignore, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_kemiskinan.dart';
import 'package:flutter/material.dart';

class KemiskinanKabupatenKota extends StatefulWidget {
  const KemiskinanKabupatenKota({Key? key}) : super(key: key);

  @override
  State<KemiskinanKabupatenKota> createState() =>
      _KemiskinanKabupatenKotaState();
}

RepositoryKemiskinan repositorykemiskinan = RepositoryKemiskinan();

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
          future: repositorykemiskinan.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isikemiskinan = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th1 = 2021.toString();
                  String th2 = 2020.toString();
                  String th3 = 2019.toString();
                  String th4 = 2018.toString();
                  String th5 = 2017.toString();

                  double pmk1 = 201.71;
                  double pmk2 = 232.91;
                  double pmk3 = 153.08;
                  double pmk4 = 150.19;
                  double pmk5 = 212.92;
                  double pmk6 = 88.80;
                  double pmk7 = 139.67;
                  double pmk8 = 154.91;
                  double pmk9 = 104.82;
                  double pmk10 = 158.23;
                  double pmk11 = 73.84;
                  double pmk12 = 110.46;
                  double pmk13 = 95.41;
                  double pmk14 = 122.91;
                  double pmk15 = 175.72;
                  double pmk16 = 107.05;
                  double pmk17 = 101.40;
                  double pmk18 = 128.74;
                  double pmk19 = 67.06;
                  double pmk20 = 95.22;
                  double pmk21 = 151.74;
                  double pmk22 = 83.61;
                  double pmk23 = 79.09;
                  double pmk24 = 100.00;
                  double pmk25 = 74.91;
                  double pmk26 = 95.26;
                  double pmk27 = 215.08;
                  double pmk28 = 123.52;
                  double pmk29 = 314.95;
                  double pmk30 = 9.44;
                  double pmk31 = 48.79;
                  double pmk32 = 10.14;
                  double pmk33 = 84.45;
                  double pmk34 = 23.49;
                  double pmk35 = 20.27;
                  double pmk36 = 4109.75;

                  double p0_1 = 11.67;
                  double p0_2 = 13.66;
                  double p0_3 = 16.24;
                  double p0_4 = 16.23;
                  double p0_5 = 17.83;
                  double p0_6 = 12.40;
                  double p0_7 = 17.67;
                  double p0_8 = 11.91;
                  double p0_9 = 10.62;
                  double p0_10 = 13.49;
                  double p0_11 = 8.23;
                  double p0_12 = 11.55;
                  double p0_13 = 10.68;
                  double p0_14 = 13.83;
                  double p0_15 = 12.74;
                  double p0_16 = 12.39;
                  double p0_17 = 15.80;
                  double p0_18 = 10.21;
                  double p0_19 = 7.60;
                  double p0_20 = 7.44;
                  double p0_21 = 12.92;
                  double p0_22 = 7.82;
                  double p0_23 = 10.17;
                  double p0_24 = 10.24;
                  double p0_25 = 9.68;
                  double p0_26 = 10.57;
                  double p0_27 = 16.56;
                  double p0_28 = 8.60;
                  double p0_29 = 17.43;
                  double p0_30 = 7.75;
                  double p0_31 = 9.4;
                  double p0_32 = 5.14;
                  double p0_33 = 4.56;
                  double p0_34 = 7.59;
                  double p0_35 = 8.12;
                  double p0_36 = 11.79;

                  double gk1 = 363.367;
                  double gk2 = 417.086;
                  double gk3 = 384.183;
                  double gk4 = 328.679;
                  double gk5 = 390.599;
                  double gk6 = 376.127;
                  double gk7 = 373.474;
                  double gk8 = 353.608;
                  double gk9 = 361.922;
                  double gk10 = 436.896;
                  double gk11 = 410.273;
                  double gk12 = 356.728;
                  double gk13 = 401.542;
                  double gk14 = 363.349;
                  double gk15 = 404.456;
                  double gk16 = 363.649;
                  double gk17 = 414.977;
                  double gk18 = 458.616;
                  double gk19 = 450.992;
                  double gk20 = 419.028;
                  double gk21 = 445.176;
                  double gk22 = 416.395;
                  double gk23 = 336.034;
                  double gk24 = 407.387;
                  double gk25 = 318.330;
                  double gk26 = 416.779;
                  double gk27 = 401.857;
                  double gk28 = 404.655;
                  double gk29 = 445.853;
                  double gk30 = 537.783;
                  double gk31 = 511.216;
                  double gk32 = 480.903;
                  double gk33 = 543.929;
                  double gk34 = 480.415;
                  double gk35 = 523.413;
                  double gk36 = 409.193;

                  double p1_1 = 1.48;
                  double p1_2 = 2.36;
                  double p1_3 = 2.10;
                  double p1_4 = 2.97;
                  double p1_5 = 3.24;
                  double p1_6 = 1.36;
                  double p1_7 = 2.75;
                  double p1_8 = 1.63;
                  double p1_9 = 1.76;
                  double p1_10 = 1.79;
                  double p1_11 = 0.91;
                  double p1_12 = 1.58;
                  double p1_13 = 1.61;
                  double p1_14 = 2.39;
                  double p1_15 = 1.66;
                  double p1_16 = 1.82;
                  double p1_17 = 2.77;
                  double p1_18 = 1.69;
                  double p1_19 = 1.23;
                  double p1_20 = 0.88;
                  double p1_21 = 2.32;
                  double p1_22 = 0.95;
                  double p1_23 = 1.57;
                  double p1_24 = 1.52;
                  double p1_25 = 1.76;
                  double p1_26 = 1.75;
                  double p1_27 = 2.92;
                  double p1_28 = 1.00;
                  double p1_29 = 3.04;
                  double p1_30 = 0.85;
                  double p1_31 = 1.83;
                  double p1_32 = 0.80;
                  double p1_33 = 0.67;
                  double p1_34 = 1.51;
                  double p1_35 = 1.04;
                  double p1_36 = 1.91;

                  double p2_1 = 0.30;
                  double p2_2 = 0.57;
                  double p2_3 = 0.41;
                  double p2_4 = 0.79;
                  double p2_5 = 0.88;
                  double p2_6 = 0.28;
                  double p2_7 = 0.65;
                  double p2_8 = 0.35;
                  double p2_9 = 0.38;
                  double p2_10 = 0.38;
                  double p2_11 = 0.21;
                  double p2_12 = 0.34;
                  double p2_13 = 0.37;
                  double p2_14 = 0.60;
                  double p2_15 = 0.37;
                  double p2_16 = 0.40;
                  double p2_17 = 0.68;
                  double p2_18 = 0.42;
                  double p2_19 = 0.27;
                  double p2_20 = 0.17;
                  double p2_21 = 0.62;
                  double p2_22 = 0.18;
                  double p2_23 = 0.39;
                  double p2_24 = 0.33;
                  double p2_25 = 0.48;
                  double p2_26 = 0.39;
                  double p2_27 = 0.77;
                  double p2_28 = 0.19;
                  double p2_29 = 0.74;
                  double p2_30 = 0.15;
                  double p2_31 = 0.54;
                  double p2_32 = 0.19;
                  double p2_33 = 0.14;
                  double p2_34 = 0.41;
                  double p2_35 = 0.24;
                  double p2_36 = 0.45;

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
                                      color: Colors.grey,
                                      child: const Text(
                                        "Kabupaten/Kota",
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
                                      color: Colors.grey,
                                      child: const Text(
                                        "Pddk Miskin",
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
                                      color: Colors.grey,
                                      child: const Text(
                                        "P0",
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
                                      color: Colors.grey,
                                      child: const Text(
                                        "GK",
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
                                      color: Colors.grey,
                                      child: const Text(
                                        "P1",
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
                                      color: Colors.grey,
                                      child: const Text(
                                        "P2",
                                        textAlign: TextAlign.center,
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
                                      child: const Text(
                                        "Cilacap",
                                        style: TextStyle(color: Colors.cyan),
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
                                      child: const Text(
                                        "Banyumas",
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
                                      child: const Text(
                                        "Purbalingga",
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
                                      child: const Text(
                                        "Banjarnegara",
                                        style: TextStyle(fontSize: 13),
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
                                      child: const Text(
                                        "Kebumen",
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
                                      child: const Text(
                                        "Purworejo",
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
                                      child: const Text(
                                        "Wonosobo",
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
                                      child: const Text(
                                        "Magelang",
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
                                      child: const Text(
                                        "Boyolali",
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
                                      child: const Text(
                                        "Klaten",
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
                                      child: const Text(
                                        "Sukoharjo",
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
                                      child: const Text(
                                        "Wonogiri",
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
                                      child: const Text(
                                        "Karanganyar",
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
                                      child: const Text(
                                        "Sragen",
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
                                      child: const Text(
                                        "Grobogan",
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
                                      child: const Text(
                                        "Blora",
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
                                      child: const Text(
                                        "Rembang",
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
                                      child: const Text(
                                        "Pati",
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
                                      child: const Text(
                                        "Kudus",
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
                                      child: const Text(
                                        "Jepara",
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
                                      child: const Text(
                                        "Demak",
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
                                      child: const Text(
                                        "Semarang",
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
                                      child: const Text(
                                        "Temanggung",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 13),
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
                                      child: const Text(
                                        "Kendal",
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
                                      child: const Text(
                                        "Batang",
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
                                      child: const Text(
                                        "Pekalongan",
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
                                      child: const Text(
                                        "Pemalang",
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
                                      child: const Text(
                                        "Tegal",
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
                                      child: const Text(
                                        "Brebes",
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
                                      child: const Text(
                                        "Kota Magelang",
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
                                      child: const Text(
                                        "Kota Surakarta",
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
                                      child: const Text(
                                        "Kota Salatiga",
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
                                      child: const Text(
                                        "Kota Semarang",
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
                                      child: const Text(
                                        "Kota Pekalongan",
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
                                      child: const Text(
                                        "Kota Tegal",
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
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 10),
                                      child: const Text(
                                        "Jateng",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(pmk36.toStringAsFixed(2),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_36.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(gk36.toStringAsFixed(3),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 13)),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_36.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_36.toStringAsFixed(2),
                                        textAlign: TextAlign.center,
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
