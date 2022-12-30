import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/grafik/grafik_pdrb_adhk_mlu_migas.dart';
import 'package:bps_cilacap/grafik/grafik_pdrb_adhk_mlu_tanpa_migas.dart';
import 'package:bps_cilacap/grafik/grafik_pdrb_lu_tanpa_migas.dart';
import 'package:bps_cilacap/tabel/tabel_pdrb_adhk_mlu_tanpa_migas.dart';
import 'package:bps_cilacap/tabel/tabel_pdrblu_tanpa_migas.dart';
import 'package:bps_cilacap/tabel/tabel_pdrb_adhk_mlu_migas.dart';
import 'package:flutter/material.dart';

class PdrbAdhkLapUs extends StatefulWidget {
  const PdrbAdhkLapUs({super.key});

  @override
  State<PdrbAdhkLapUs> createState() => _PdrbAdhkLapUsState();
}

class _PdrbAdhkLapUsState extends State<PdrbAdhkLapUs> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'PDRB ADHK Menurut Lapangan Usaha',
            style: TextStyle(fontSize: 16),
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
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  color: Colors.black87,
                  child: const Center(
                      child: Text(
                    "Dengan Migas",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                SizedBox(
                  height: screenHeight * 0.8,
                  width: screenWidth,
                  child: Column(
                    children: const [
                      Flexible(
                        child: TabelPdrbAdhkMLUMigas(),
                      ),
                      Flexible(
                        child: grafikPdrbAdhkMLUMigas(),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  color: Colors.black87,
                  child: const Center(
                      child: Text(
                    "Tanpa Migas",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                SizedBox(
                  height: screenHeight * 0.8,
                  width: screenWidth,
                  child: Column(
                    children: const [
                      Flexible(
                        child: TabelPdrbAdhkMLUTanpaMigas(),
                      ),
                      Flexible(
                        child: grafikPdrbAdhkMLUTanpaMigas(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
