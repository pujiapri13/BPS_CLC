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
              List isipendudukkecamatan = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String thn = (isipendudukkecamatan[index = 0].created_at[0] +
                          isipendudukkecamatan[index = 0].created_at[1] +
                          isipendudukkecamatan[index = 0].created_at[2] +
                          isipendudukkecamatan[index = 0].created_at[3])
                      .toString();

                  String kec1 = isipendudukkecamatan[index = 0].kecamatan;
                  String kec2 = isipendudukkecamatan[index = 1].kecamatan;
                  String kec3 = isipendudukkecamatan[index = 2].kecamatan;
                  String kec4 = isipendudukkecamatan[index = 3].kecamatan;
                  String kec5 = isipendudukkecamatan[index = 4].kecamatan;
                  String kec6 = isipendudukkecamatan[index = 5].kecamatan;
                  String kec7 = isipendudukkecamatan[index = 6].kecamatan;
                  String kec8 = isipendudukkecamatan[index = 7].kecamatan;
                  String kec9 = isipendudukkecamatan[index = 8].kecamatan;
                  String kec10 = isipendudukkecamatan[index = 9].kecamatan;
                  String kec11 = isipendudukkecamatan[index = 10].kecamatan;
                  String kec12 = isipendudukkecamatan[index = 11].kecamatan;
                  String kec13 = isipendudukkecamatan[index = 12].kecamatan;
                  String kec14 = isipendudukkecamatan[index = 13].kecamatan;
                  String kec15 = isipendudukkecamatan[index = 14].kecamatan;
                  String kec16 = isipendudukkecamatan[index = 15].kecamatan;
                  String kec17 = isipendudukkecamatan[index = 16].kecamatan;
                  String kec18 = isipendudukkecamatan[index = 17].kecamatan;
                  String kec19 = isipendudukkecamatan[index = 18].kecamatan;
                  String kec20 = isipendudukkecamatan[index = 19].kecamatan;
                  String kec21 = isipendudukkecamatan[index = 20].kecamatan;
                  String kec22 = isipendudukkecamatan[index = 21].kecamatan;
                  String kec23 = isipendudukkecamatan[index = 22].kecamatan;
                  String kec24 = isipendudukkecamatan[index = 23].kecamatan;

                  int lk1 = int.parse(isipendudukkecamatan[index = 0].lk);
                  int lk2 = int.parse(isipendudukkecamatan[index = 1].lk);
                  int lk3 = int.parse(isipendudukkecamatan[index = 2].lk);
                  int lk4 = int.parse(isipendudukkecamatan[index = 3].lk);
                  int lk5 = int.parse(isipendudukkecamatan[index = 4].lk);
                  int lk6 = int.parse(isipendudukkecamatan[index = 5].lk);
                  int lk7 = int.parse(isipendudukkecamatan[index = 6].lk);
                  int lk8 = int.parse(isipendudukkecamatan[index = 7].lk);
                  int lk9 = int.parse(isipendudukkecamatan[index = 8].lk);
                  int lk10 = int.parse(isipendudukkecamatan[index = 9].lk);
                  int lk11 = int.parse(isipendudukkecamatan[index = 10].lk);
                  int lk12 = int.parse(isipendudukkecamatan[index = 11].lk);
                  int lk13 = int.parse(isipendudukkecamatan[index = 12].lk);
                  int lk14 = int.parse(isipendudukkecamatan[index = 13].lk);
                  int lk15 = int.parse(isipendudukkecamatan[index = 14].lk);
                  int lk16 = int.parse(isipendudukkecamatan[index = 15].lk);
                  int lk17 = int.parse(isipendudukkecamatan[index = 16].lk);
                  int lk18 = int.parse(isipendudukkecamatan[index = 17].lk);
                  int lk19 = int.parse(isipendudukkecamatan[index = 18].lk);
                  int lk20 = int.parse(isipendudukkecamatan[index = 19].lk);
                  int lk21 = int.parse(isipendudukkecamatan[index = 20].lk);
                  int lk22 = int.parse(isipendudukkecamatan[index = 21].lk);
                  int lk23 = int.parse(isipendudukkecamatan[index = 22].lk);
                  int lk24 = int.parse(isipendudukkecamatan[index = 23].lk);
                  int lkTotal = lk1 +
                      lk2 +
                      lk3 +
                      lk4 +
                      lk5 +
                      lk6 +
                      lk7 +
                      lk8 +
                      lk9 +
                      lk10 +
                      lk11 +
                      lk12 +
                      lk13 +
                      lk14 +
                      lk15 +
                      lk16 +
                      lk17 +
                      lk18 +
                      lk19 +
                      lk20 +
                      lk21 +
                      lk22 +
                      lk23 +
                      lk24;

                  int pr1 = int.parse(isipendudukkecamatan[index = 0].pr);
                  int pr2 = int.parse(isipendudukkecamatan[index = 1].pr);
                  int pr3 = int.parse(isipendudukkecamatan[index = 2].pr);
                  int pr4 = int.parse(isipendudukkecamatan[index = 3].pr);
                  int pr5 = int.parse(isipendudukkecamatan[index = 4].pr);
                  int pr6 = int.parse(isipendudukkecamatan[index = 5].pr);
                  int pr7 = int.parse(isipendudukkecamatan[index = 6].pr);
                  int pr8 = int.parse(isipendudukkecamatan[index = 7].pr);
                  int pr9 = int.parse(isipendudukkecamatan[index = 8].pr);
                  int pr10 = int.parse(isipendudukkecamatan[index = 9].pr);
                  int pr11 = int.parse(isipendudukkecamatan[index = 10].pr);
                  int pr12 = int.parse(isipendudukkecamatan[index = 11].pr);
                  int pr13 = int.parse(isipendudukkecamatan[index = 12].pr);
                  int pr14 = int.parse(isipendudukkecamatan[index = 13].pr);
                  int pr15 = int.parse(isipendudukkecamatan[index = 14].pr);
                  int pr16 = int.parse(isipendudukkecamatan[index = 15].pr);
                  int pr17 = int.parse(isipendudukkecamatan[index = 16].pr);
                  int pr18 = int.parse(isipendudukkecamatan[index = 17].pr);
                  int pr19 = int.parse(isipendudukkecamatan[index = 18].pr);
                  int pr20 = int.parse(isipendudukkecamatan[index = 19].pr);
                  int pr21 = int.parse(isipendudukkecamatan[index = 20].pr);
                  int pr22 = int.parse(isipendudukkecamatan[index = 21].pr);
                  int pr23 = int.parse(isipendudukkecamatan[index = 22].pr);
                  int pr24 = int.parse(isipendudukkecamatan[index = 23].pr);
                  int prTotal = pr1 +
                      pr2 +
                      pr3 +
                      pr4 +
                      pr5 +
                      pr6 +
                      pr7 +
                      pr8 +
                      pr9 +
                      pr10 +
                      pr11 +
                      pr12 +
                      pr13 +
                      pr14 +
                      pr15 +
                      pr16 +
                      pr17 +
                      pr18 +
                      pr19 +
                      pr20 +
                      pr21 +
                      pr22 +
                      pr23 +
                      pr24;

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
                                          style: const TextStyle(
                                              color: Colors.white),
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
                                          style: const TextStyle(
                                              color: Colors.white),
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
                                          style: const TextStyle(
                                              color: Colors.white),
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
