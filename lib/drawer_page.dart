// ignore_for_file: non_constant_identifier_names

import 'package:bps_cilacap/drawer_menu/berita_resmi_statistik.dart';
import 'package:bps_cilacap/drawer_menu/konsep_definisi.dart';
import 'package:bps_cilacap/drawer_menu/publikasi.dart';
import 'package:bps_cilacap/drawer_menu/senarai_rencana_terbit.dart';
import 'package:bps_cilacap/drawer_menu/tabel.dart';
import 'package:bps_cilacap/drawer_menu/tentang_aplikasi.dart';
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
              title: const Text('KELUAR APLIKASI'),
              content: const Text('Apakah yakin ingin keluar ?'),
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
            ));
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
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const informasiGrafis();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.map_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Informasi Grafis',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Tabel();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.blinds_closed_outlined,
                        color: Colors.white,
                      ),
                      title:
                          Text('Tabel', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Publikasi();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.newspaper_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Publikasi',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const BeritaResmiStatistik();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.add_chart_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Berita Resmi Statistik',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const SenaraiRencanaTerbit();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.storage_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Senarai Rencana Terbit',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const KonsepDefinisi();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.solar_power_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Konsep & Definisi',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const TentangAplikasi();
                        },
                      ));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.info_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Tentang Aplikasi',
                          style: TextStyle(color: Colors.white)),
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
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      maximumSize: Size(DrawerWidth, DrawerHeight)),
                  icon: const Icon(Icons.arrow_back_ios),
                  label: const Text('KELUAR'),
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
