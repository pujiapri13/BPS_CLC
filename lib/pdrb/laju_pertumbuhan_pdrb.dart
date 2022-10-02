import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/grafik/grafik_lp_pdrb_migas.dart';
import 'package:bps_cilacap/grafik/grafik_lp_pdrb_tanpa_migas.dart';
import 'package:bps_cilacap/tabel/tabel_lp_pdrb_migas.dart';
import 'package:bps_cilacap/tabel/tabel_lp_pdrb_tanpa_migas.dart';
import 'package:flutter/material.dart';

class LajuPertumbuhanPdrb extends StatefulWidget {
  const LajuPertumbuhanPdrb({super.key});

  @override
  State<LajuPertumbuhanPdrb> createState() => _LajuPertumbuhanPdrbState();
}

class _LajuPertumbuhanPdrbState extends State<LajuPertumbuhanPdrb> {
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
            'Laju Pertumbuhan PDRB',
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
                        child: TabelLPPdrbMigas(),
                      ),
                      Flexible(child: GrafikLPPdrbMigas()),
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
                        child: TabelLPPdrbTanpaMigas(),
                      ),
                      Flexible(
                        child: GrafikLPPdrbTanpaMigas(),
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
