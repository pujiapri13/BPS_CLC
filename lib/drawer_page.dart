// ignore_for_file: non_constant_identifier_names

import 'package:bps_cilacap/drawer_menu/berita_resmi_statistik.dart';
import 'package:bps_cilacap/drawer_menu/konsep_definisi.dart';
import 'package:bps_cilacap/drawer_menu/publikasi.dart';
import 'package:bps_cilacap/drawer_menu/senarai_rencana_terbit.dart';
import 'package:bps_cilacap/drawer_menu/tabel.dart';
import 'package:bps_cilacap/drawer_menu/tentang_aplikasi.dart';
import 'package:bps_cilacap/drawer_menu/web_gis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'drawer_menu/informasi_grafis.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  Future<bool> showexitpesan() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'KELUAR APLIKASI',
        ),
        content: const Text(
          'Apakah yakin ingin keluar ?',
        ),
        actions: [
          TextButton(
            child: const Text('YES'),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
          TextButton(
            child: const Text('NO'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final DrawerHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final DrawerWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        showexitpesan();
        return Future.value(false);
      },
      child: Material(
        color: Colors.black,
        child: Column(
          children: [
            //satu
            Container(
              height: DrawerHeight * 0.20,
              width: DrawerWidth,
              color: Colors.blue,
              child: Image.asset(
                './assets/images/gedung.jpg',
                fit: BoxFit.fill,
              ),
            ),
            //dua
            Container(
              height: DrawerHeight * 0.70,
              width: DrawerWidth,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const informasiGrafis();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/infografis_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Infografis',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const webGis();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/gis_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Web GIS',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Tabel();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/tabel_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Tabel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Publikasi();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/publikasi_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Publikasi',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const BeritaResmiStatistik();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/brs_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Berita Resmi Statistik',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SenaraiRencanaTerbit();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/srt_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Senarai Rencana Terbit',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const KonsepDefinisi();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/konsepdefinisi_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Konsep & Definisi',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const TentangAplikasi();
                            },
                          ),
                        );
                      },
                      child: ListTile(
                        minLeadingWidth: DrawerWidth * 0.05,
                        leading: Image.asset(
                          "assets/images/drawer/about_icon.png",
                          color: Colors.white,
                        ),
                        title: const Text(
                          'Tentang Aplikasi',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //tiga
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.black,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    fixedSize: Size(
                      DrawerWidth * 0.35,
                      DrawerHeight,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/drawer/keluar_icon.png",
                        width: 25,
                        color: Colors.black,
                      ),
                      const Flexible(
                          child: Text(
                        " KELUAR",
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                  onPressed: () {
                    showexitpesan();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
