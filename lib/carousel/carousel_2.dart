import 'package:flutter/material.dart';

class carouselSlider2 extends StatefulWidget {
  const carouselSlider2({super.key});

  @override
  State<carouselSlider2> createState() => _carouselSlider2State();
}

class _carouselSlider2State extends State<carouselSlider2> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(136, 159, 176, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(top: 3, bottom: 3),
        width: screenWidth,
        height: screenHeight,
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Container(
                width: 60,
                height: 60,
                child: Image.asset(
                  'assets/images/carousel/hasil_sp_icon.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Hasil SP2021",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Laki - laki = " "980.999" " Jiwa",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Perempuan = " "963.858" " Jiwa",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Jumlah Total = " "1.944.857" "Jiwa",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// ignore_for_file: camel_case_types