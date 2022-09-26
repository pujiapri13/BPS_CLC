import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/grafik/grafik_pdrb_lu_migas.dart';
import 'package:bps_cilacap/grafik/grafik_pdrb_lu_tanpa_migas.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb.dart';
import 'package:bps_cilacap/tabel/tabel_pdrblu_migas.dart';
import 'package:bps_cilacap/tabel/tabel_pdrblu_tanpa_migas.dart';
import 'package:flutter/material.dart';

class PdrbLapUs extends StatefulWidget {
  const PdrbLapUs({super.key});

  @override
  State<PdrbLapUs> createState() => _PdrbLapUsState();
}

class _PdrbLapUsState extends State<PdrbLapUs> {

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
            'PDRB AHB Menurut Lapangan Usaha',
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
                Container(
                  height: screenHeight * 0.8,
                  width: screenWidth,
                  child: Column(
                    children: [
                      const Flexible(
                        child: TabelPdrbLUMigas(),
                      ),
                      Flexible(
                        child: grafikPdrbLUMigas(),
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
                Container(
                  height: screenHeight * 0.8,
                  width: screenWidth,
                  child: Column(
                    children: [
                      Flexible(
                        child: TabelPdrbLUTanpaMigas(),
                      ),
                      Flexible(
                        child: grafikPdrbLUTanpaMigas(),
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
