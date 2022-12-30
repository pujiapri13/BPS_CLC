// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_penduduk_kecamatan.dart';
import 'package:flutter/material.dart';

class JumlahPendudukKecamatan extends StatefulWidget {
  const JumlahPendudukKecamatan({Key? key}) : super(key: key);

  @override
  State<JumlahPendudukKecamatan> createState() =>
      _JumlahPendudukKecamatanState();
}

RepositoryJumlahPendudukKecamatan jumlahPendudukKecamatan =
    RepositoryJumlahPendudukKecamatan();

class _JumlahPendudukKecamatanState extends State<JumlahPendudukKecamatan> {
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
            'Jumlah Penduduk (Kecamatan)',
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
          future: jumlahPendudukKecamatan.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isipendudukumur = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String thn = (isipendudukumur[index = 0].created_at[0] +
                          isipendudukumur[index = 0].created_at[1] +
                          isipendudukumur[index = 0].created_at[2] +
                          isipendudukumur[index = 0].created_at[3])
                      .toString();

                  String kec1 = isipendudukumur[index = 0].kecamatan;
                  String kec2 = isipendudukumur[index = 1].kecamatan;
                  String kec3 = isipendudukumur[index = 2].kecamatan;
                  String kec4 = isipendudukumur[index = 3].kecamatan;
                  String kec5 = isipendudukumur[index = 4].kecamatan;
                  String kec6 = isipendudukumur[index = 5].kecamatan;
                  String kec7 = isipendudukumur[index = 6].kecamatan;
                  String kec8 = isipendudukumur[index = 7].kecamatan;
                  String kec9 = isipendudukumur[index = 8].kecamatan;
                  String kec10 = isipendudukumur[index = 9].kecamatan;
                  String kec11 = isipendudukumur[index = 10].kecamatan;
                  String kec12 = isipendudukumur[index = 11].kecamatan;
                  String kec13 = isipendudukumur[index = 12].kecamatan;
                  String kec14 = isipendudukumur[index = 13].kecamatan;
                  String kec15 = isipendudukumur[index = 14].kecamatan;
                  String kec16 = isipendudukumur[index = 15].kecamatan;
                  String kec17 = isipendudukumur[index = 16].kecamatan;
                  String kec18 = isipendudukumur[index = 17].kecamatan;
                  String kec19 = isipendudukumur[index = 18].kecamatan;
                  String kec20 = isipendudukumur[index = 19].kecamatan;
                  String kec21 = isipendudukumur[index = 20].kecamatan;
                  String kec22 = isipendudukumur[index = 21].kecamatan;
                  String kec23 = isipendudukumur[index = 22].kecamatan;
                  String kec24 = isipendudukumur[index = 23].kecamatan;
                  int lk1 = 24409;
                  int lk2 = 52895;
                  int lk3 = 70712;
                  int lk4 = 51736;
                  int lk5 = 39913;
                  int lk6 = 33410;
                  int lk7 = 31043;
                  int lk8 = 44381;
                  int lk9 = 24883;
                  int lk10 = 55149;
                  int lk11 = 37799;
                  int lk12 = 42737;
                  int lk13 = 8049;
                  int lk14 = 38795;
                  int lk15 = 67445;
                  int lk16 = 47623;
                  int lk17 = 23026;
                  int lk18 = 21755;
                  int lk19 = 57803;
                  int lk20 = 34649;
                  int lk21 = 43332;
                  int lk22 = 42328;
                  int lk23 = 45651;
                  int lk24 = 41476;
                  int lkTotal = 980999;

                  int pr1 = 24686;
                  int pr2 = 52685;
                  int pr3 = 69617;
                  int pr4 = 50865;
                  int pr5 = 39183;
                  int pr6 = 32674;
                  int pr7 = 30897;
                  int pr8 = 43554;
                  int pr9 = 24601;
                  int pr10 = 53702;
                  int pr11 = 36756;
                  int pr12 = 41617;
                  int pr13 = 7474;
                  int pr14 = 37863;
                  int pr15 = 65816;
                  int pr16 = 46376;
                  int pr17 = 23162;
                  int pr18 = 21671;
                  int pr19 = 56628;
                  int pr20 = 34035;
                  int pr21 = 42455;
                  int pr22 = 41620;
                  int pr23 = 44767;
                  int pr24 = 41154;
                  int prTotal = 963858;

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: Center(
                              child: Text(
                                "Jumlah Penduduk Kabupaten Cilacap menurut Kecamatan, Hasil SP" +
                                    thn,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            )),
                        SizedBox(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Center(
                                        child: Text(
                                          "Kelompok Umur",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Center(
                                        child: Text(
                                          "Laki-laki",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Center(
                                        child: Text(
                                          "Perempuan",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.cyan,
                                      child: const Center(
                                        child: Text(
                                          "Lk+Pr",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Dayeuhluhur
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec1,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk1.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr1.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk1 + pr1).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Wanareja
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec2,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk2.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr2.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk2 + pr2).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Majenang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec3,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk3.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr3.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk3 + pr3).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Cimanggu
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec4,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk4.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr4.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk4 + pr4).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Karangpucung
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec5,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk5.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr5.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk5 + pr5).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Cipari
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec6,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk6.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr6.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk6 + pr6).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Sidareja
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec7,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk7.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr7.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk7 + pr7).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kedungreja
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec8,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk8.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr8.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk8 + pr8).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Patimuan
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec9,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk9.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr9.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk9 + pr9).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Gandrungmangu
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec10,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk10.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr10.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk10 + pr10).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Bantarsari
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec11,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk11.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr11.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk11 + pr11).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kawunganten
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec12,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk12.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr12.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk12 + pr12).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kampung Laut
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec13,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk13.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr13.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk13 + pr13).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Jeruklegi
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec14,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk14.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr14.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk14 + pr14).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kesugihan
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec15,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk15.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr15.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk15 + pr15).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Adipala
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec16,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk16.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr16.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk16 + pr16).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Maos
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec17,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk17.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr17.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk17 + pr17).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Sampang
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec18,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk18.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr18.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk18 + pr18).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Kroya
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec19,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk19.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr19.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk19 + pr19).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Binangun
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec20,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk20.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr20.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk20 + pr20).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Nusawungu
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec21,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk21.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr21.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk21 + pr21).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Cilacap Selatan
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec22,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk22.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr22.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk22 + pr22).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Cilacap Tengah
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec23,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk23.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr23.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk23 + pr23).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Cilacap Utara
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Center(
                                        child: Text(
                                          kec24,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        lk24.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        pr24.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        (lk24 + pr24).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Total
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: const Center(
                                        child: Text(
                                          "Total",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          lkTotal.toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          prTotal.toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.cyan,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          (lkTotal + prTotal).toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
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
