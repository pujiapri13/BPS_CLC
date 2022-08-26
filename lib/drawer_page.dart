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
    final DrawerHeight = MediaQuery.of(context).size.height;
    final DrawerWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        showexitpesan();
        return Future.value(false);
      },
      child: Material(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: DrawerWidth,
              height: DrawerHeight * 0.20,
              child: Image.asset(
                './assets/images/gedung.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: DrawerWidth,
              height: DrawerHeight * 0.6,
              color: Colors.black,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const informasiGrafis();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.map_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Informasi Grafis',
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const Tabel();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.blinds_closed_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Tabel', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const Publikasi();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.newspaper_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Publikasi',
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const BeritaResmiStatistik();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.add_chart_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Berita Resmi Statistik',
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const SenaraiRencanaTerbit();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.storage_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Senarai Rencana Terbit',
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const KonsepDefinisi();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.solar_power_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Konsep & Definisi',
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const TentangAplikasi();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.info_outlined,
                      color: Colors.white,
                    ),
                    title: const Text('Tentang Aplikasi',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DrawerHeight * 0.1,
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    5, (DrawerHeight * 0.1) * 2 / 3, DrawerWidth * 0.5, 0),
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

      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.map_outlined,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Informasi Grafis',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       //loro
      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.blinds_closed_outlined,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Tabel',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),

      //       //telu
      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.newspaper_outlined,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Publikasi',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),

      //       //papat
      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.add_chart_outlined,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Berita Resmi Statistik',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),

      //       //lima
      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.storage_outlined,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Senarai Rencana Terbit',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       //enem

      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.solar_power_outlined,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Konsep & Definisi',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       //pitu
      //       Container(
      //         height: DrawerHeight * 0.03,
      //         margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      //         alignment: Alignment.center,
      //         color: Colors.white,
      //         child: Row(
      //           children: <Widget>[
      //             const SizedBox(
      //               width: 60,
      //               height: 60,
      //               child: Icon(
      //                 Icons.info_outline,
      //                 color: Colors.black,
      //               ),
      //             ),
      //             Container(
      //               alignment: Alignment.centerLeft,
      //               width: 200,
      //               height: 60,
      //               child: const Text(
      //                 'Tentang Aplikasi',
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold, fontSize: 18),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       //exit

      //       Container(
      //           height: DrawerHeight / 20,
      //           margin: EdgeInsets.fromLTRB(
      //               10, DrawerHeight * 0.20, DrawerWidth * 0.5, 10),
      //           decoration: const BoxDecoration(color: Colors.white),
      //           child: ElevatedButton(
      //               style: ElevatedButton.styleFrom(primary: Colors.white),
      //               child: const Text(
      //                 'KELUAR',
      //                 style: TextStyle(color: Colors.black, fontSize: 18),
      //               ),
      //               onPressed: () {
      //                 showexitpesan();
      //               }))
      // akhirrrrr
      // ],
      // ),
      // ),
      // ),
    );
  }
}
