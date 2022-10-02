// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';

class JumlahPendudukUmur extends StatefulWidget {
  const JumlahPendudukUmur({Key? key}) : super(key: key);

  @override
  State<JumlahPendudukUmur> createState() => _JumlahPendudukUmurState();
}

RepositoryPendudukUmur repositorypendudukumur = RepositoryPendudukUmur();

class _JumlahPendudukUmurState extends State<JumlahPendudukUmur> {
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
            'Jumlah Penduduk (Umur)',
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
          future: repositorypendudukumur.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isipendudukumur = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String thn = (isipendudukumur[index = 0].tanggal[0] +
                          isipendudukumur[index = 0].tanggal[1] +
                          isipendudukumur[index = 0].tanggal[2] +
                          isipendudukumur[index = 0].tanggal[3])
                      .toString();

                  int lk1 = isipendudukumur[index = 0].a;
                  int lk2 = isipendudukumur[index = 0].b;
                  int lk3 = isipendudukumur[index = 0].c;
                  int lk4 = isipendudukumur[index = 0].d;
                  int lk5 = isipendudukumur[index = 0].e;
                  int lk6 = isipendudukumur[index = 0].f;
                  int lk7 = isipendudukumur[index = 0].g;
                  int lk8 = isipendudukumur[index = 0].h;
                  int lk9 = isipendudukumur[index = 0].i;
                  int lk10 = isipendudukumur[index = 0].j;
                  int lk11 = isipendudukumur[index = 0].k;
                  int lk12 = isipendudukumur[index = 0].l;
                  int lk13 = isipendudukumur[index = 0].m;
                  int lk14 = isipendudukumur[index = 0].n;
                  int lk15 = isipendudukumur[index = 0].o;
                  int lk16 = isipendudukumur[index = 0].p;
                  int lkTotal = isipendudukumur[index = 0].total;

                  int pr1 = isipendudukumur[index = 1].a;
                  int pr2 = isipendudukumur[index = 1].b;
                  int pr3 = isipendudukumur[index = 1].c;
                  int pr4 = isipendudukumur[index = 1].d;
                  int pr5 = isipendudukumur[index = 1].e;
                  int pr6 = isipendudukumur[index = 1].f;
                  int pr7 = isipendudukumur[index = 1].g;
                  int pr8 = isipendudukumur[index = 1].h;
                  int pr9 = isipendudukumur[index = 1].i;
                  int pr10 = isipendudukumur[index = 1].j;
                  int pr11 = isipendudukumur[index = 1].k;
                  int pr12 = isipendudukumur[index = 1].l;
                  int pr13 = isipendudukumur[index = 1].m;
                  int pr14 = isipendudukumur[index = 1].n;
                  int pr15 = isipendudukumur[index = 1].o;
                  int pr16 = isipendudukumur[index = 1].p;
                  int prTotal = isipendudukumur[index = 1].total;

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: Center(
                              child: Text(
                                "Jumlah Penduduk Kabupaten Cilacap menurut Kelompok Umur, Hasil SP" +
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
                                    flex: 1,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: const Center(
                                        child: Text(
                                          "Kelompok Umur",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: const Center(
                                        child: Text(
                                          "Laki-laki",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: const Center(
                                        child: Text(
                                          "Perempuan",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      height: screenHeight * 0.07,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: const Center(
                                        child: Text(
                                          "Lk+Pr",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 0 - 4
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "0 - 4",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk1.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr1.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk1 + pr1).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 5 - 9
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "5 - 9",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk2.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr2.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk2 + pr2).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 10 - 14
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "10 - 14",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk3.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr3.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk3 + pr3).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 15 - 19
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "15 - 19",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk4.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr4.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk4 + pr4).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 20 - 24
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "20 - 24",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk5.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr5.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk5 + pr5).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 25 - 29
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "29 - 29",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk6.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr6.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk6 + pr6).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 30 - 34
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "30 - 34",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk7.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr7.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk7 + pr7).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 35 - 39
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "35 - 39",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk8.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr8.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk8 + pr8).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 40 - 44
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "40 - 44",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk9.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr9.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk9 + pr9).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 45 - 49
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "45 - 49",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk10.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr10.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk10 + pr10).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 50 - 54
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "50 - 54",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk11.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr11.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk11 + pr11).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 55 - 59
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "55 - 59",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk12.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr12.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk12 + pr12).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 60 - 64
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "60 - 64",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk13.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr13.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk13 + pr13).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 65 - 69
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "65 - 69",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk14.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr14.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk14 + pr14).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 70 - 74
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "70 - 74",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk15.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr15.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk15 + pr15).toString(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // 75 +
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: const Center(
                                        child: Text(
                                          "75 +",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        lk16.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        pr16.toString(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        (lk16 + pr16).toString(),
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
                                    flex: 1,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: const Center(
                                        child: Text(
                                          "Total",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          lkTotal.toString(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          prTotal.toString(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      color: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          (lkTotal + prTotal).toString(),
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
