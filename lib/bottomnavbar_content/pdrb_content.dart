// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/bott_nav_icons_icons.dart';
import 'package:bps_cilacap/bottomnavbar_content/sensus_content.dart';
import 'package:bps_cilacap/bottomnavbar_content/ipm_content.dart';
import 'package:bps_cilacap/home_screen.dart';
import 'package:flutter/material.dart';

class PdrbContent extends StatefulWidget {
  const PdrbContent({Key? key}) : super(key: key);

  @override
  _PdrbContentState createState() => _PdrbContentState();
}

class _PdrbContentState extends State<PdrbContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('PDRB'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 20,
              child: Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: screenHeight * 0.2,
                color: Colors.amber,
                //<<<edit isi dari sini
                child: Column(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        color: Colors.blue
                      )
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        color: Colors.grey,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                color: Colors.orange,
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //sampai sini>>>>
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 40,
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.2,
                color: Colors.purple,
                //<<<edit isi dari sini
                child: const Center(
                  child: Text(
                    'Tabel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                //sampai sini>>>>
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 40,
              child: Container(
                width: double.infinity,
                height: screenHeight * 0.2,
                color: Colors.pink,
                //<<<edit isi dari sini
                child: const Center(
                  child: Text(
                    'Grafik',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                //sampai sini>>>>
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: screenHeight * 0.1,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //Button Home
              IconButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ));
                },
                icon: const Icon(
                  BottNavIcons.home,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              //Button PDRB
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bar_chart_outlined,
                    color: Colors.cyan,
                    size: 35,
                  )),
              // Button IPM
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const IpmContent();
                      },
                    ));
                  },
                  icon: const Icon(
                    Icons.stacked_line_chart_outlined,
                    color: Colors.white,
                    size: 25,
                  )),
              // button 4
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const Sensus();
                      },
                    ));
                  },
                  icon: const Icon(
                    BottNavIcons.user_group,
                    color: Colors.white,
                    size: 25,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
