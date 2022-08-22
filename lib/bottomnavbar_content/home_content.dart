// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<String> carouselList = ["Satu", "Dua", "Tiga"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: ListView(
        children: [
          CarouselSlider(
            items: carouselList.map((e) {
              return Builder(
                builder: (context) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeOutBack,
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 350.0,
              viewportFraction: 0.98,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: true,
              onPageChanged: (index, reason) {
                print(reason);
                // print(CarouselPageChangedReason.controller);
              },
            ),
          )
        ],
      ),
    );
  }
}
