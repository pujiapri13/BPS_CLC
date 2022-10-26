import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_lpu/isi_ak_lpu_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_lpu/isi_ak_lpu_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_lpu/isi_ak_lpu_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_lpu/isi_ak_lpu_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_lpu/isi_ak_lpu_e.dart';
import 'package:flutter/material.dart';

class AKKerjaLPUKelamin extends StatefulWidget {
  const AKKerjaLPUKelamin({super.key});

  @override
  State<AKKerjaLPUKelamin> createState() => _AKKerjaLPUKelaminState();
}

class _AKKerjaLPUKelaminState extends State<AKKerjaLPUKelamin> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Penduduk Bekerja (Lapangan Pekerjaan Utama)',
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
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Persentase Penduduk yang Bekerja menurut Lapangan Pekerjaan Utama dan Jenis Kelamin Kabupaten Cilacap",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 5,
                    child: Container(
                      height: 100,
                      color: Colors.transparent,
                      child: DefaultTabController(
                        length: 5,
                        child: Scaffold(
                          appBar: AppBar(
                            backgroundColor: Colors.black,
                            leading: const Text(
                              " ",
                              style: TextStyle(color: Colors.transparent),
                            ),
                            toolbarHeight: screenHeight * 0.01,
                            bottom: const TabBar(
                              indicatorColor: Colors.white,
                              tabs: [
                                Tab(text: "2022"),
                                Tab(
                                  text: "2021",
                                ),
                                Tab(
                                  text: "2020",
                                ),
                                Tab(
                                  text: "2019",
                                ),
                                Tab(
                                  text: "2018",
                                ),
                              ],
                            ),
                          ),
                          body: const TabBarView(children: [
                            IsiAkLpuA(),
                            IsiAkLpuB(),
                            IsiAkLpuC(),
                            IsiAkLpuD(),
                            IsiAkLpuE(),
                          ]),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}