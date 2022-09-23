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
                            children: const <Widget>[
                              Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Text('ISI Sosial Kependudukan'),
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
                            children: const <Widget>[
                              Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Text('ISI Ekonomi Perdagangan'),
                                    )),
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
                            children: const <Widget>[
                              Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                    child: SizedBox(
                                      child: Text('ISI Pertanian'),
                                    )),
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
