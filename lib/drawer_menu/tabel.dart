import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_ekspor_impor.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_energi.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_gender.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_geografi.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_hortikultura.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_iklim.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_industri.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_inflasi.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_ipm.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_kemiskinan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_kependudukan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_kesehatan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_ketenagakerjaan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_keuangan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_komunikasi.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_pariwisata.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_pdrb_lapus.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_pdrb_pengeluaran.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_pemerintahan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_pendidikan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_perikanan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_perkebunan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_perumahan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_peternakan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_tanaman_pangan.dart';
import 'package:bps_cilacap/drawer_menu/tabel_webview/tabel_transportasi.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class Tabel extends StatefulWidget {
  const Tabel({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<Tabel> createState() => _TabelState();
}

class _TabelState extends State<Tabel> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel'),
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
      body: Column(
        children: <Widget>[
          //<<< Konten
          Flexible(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.black87,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView(
                      children: <Widget>[
                        //<<< cardA
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardA,
                            title: const Text('Sosial dan Kependudukan'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.blue,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelGender(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text("Gender"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.orange,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelGeografi(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Geografi/Geography"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelIklim(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Iklim / Climate"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.brown,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelIpm(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Indeks Pembangunan Manusia"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.grey,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelKemiskinan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Kemiskinan / Poverty"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelKependudukan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Kependudukan / Population"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelKesehatan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Kesehatan / Health"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelPemerintahan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Pemerintahan / Government"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.yellow,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelPendidikan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Pendidikan / Education"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.purple,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelPerumahan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Perumahan / Housing"),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.circle_rounded,
                                                color: Colors.pink,
                                                size: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      CustomPageRoute(
                                                          child:
                                                              const TabelKetenagakerjaan(),
                                                          direction:
                                                              AxisDirection
                                                                  .up));
                                                },
                                                child: const Text(
                                                    "Ketenagakerjaan"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ), //>>> /cardA
                        //<<< cardB
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardB,
                            title: const Text('Ekonomi dan Perdagangan'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.blue,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelEksporImpor(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Ekspor-Impor / Foreign Trade"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.orange,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelEnergi(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child:
                                                const Text("Energi / Energy"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.green,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelIndustri(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Industri / Industry"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.brown,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelInflasi(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Inflasi / Inflation"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelKeuangan(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Keuangan / Public Finance"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelKomunikasi(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Komunikasi / Communication"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.red,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelPariwisata(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Pariwisata / Tourism"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.black,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelPdrbLapUs(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "PDRB Lapangan Usaha"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.yellow,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelPdrbPengeluaran(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child:
                                                const Text("PDRB Pengeluaran"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.purple,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelTransportasi(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text(
                                                "Transportasi / Transportation"),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //>>> /cardB
                        //<<< cardC
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardC,
                            title: const Text('Pertanian'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.blue,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelHortikultura(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text("Hortikultura"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.orange,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelPerikanan(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text("Perikanan"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.green,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelPerkebunan(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text("Perkebunan"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.brown,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelPeternakan(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text("Peternakan"),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.circle_rounded,
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  CustomPageRoute(
                                                      child:
                                                          const TabelTanamanPangan(),
                                                      direction:
                                                          AxisDirection.up));
                                            },
                                            child: const Text("Tanaman Pangan"),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //>>> /cardC
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
      : super(
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
        child: child,
      );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
