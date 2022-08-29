// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/bottomnavbar_content/sensus_content.dart';
import 'package:bps_cilacap/bottomnavbar_content/pdrb_content.dart';
import 'package:flutter/material.dart';

import '../bott_nav_icons_icons.dart';
import '../home_screen.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  _IpmContentState createState() => _IpmContentState();
}

class _IpmContentState extends State<IpmContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('IPM'),
          backgroundColor: Colors.black,
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
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const PdrbContent();
                      },
                    ));
                  },
                  icon: const Icon(
                    Icons.bar_chart_outlined,
                    color: Colors.white,
                    size: 25,
                  )),
              // Button IPM
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.stacked_line_chart_outlined,
                    color: Colors.cyan,
                    size: 35,
                  )),
              // button 4
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Sensus();
                        },
                      ),
                    );
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
