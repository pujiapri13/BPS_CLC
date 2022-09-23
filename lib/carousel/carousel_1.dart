import 'package:flutter/material.dart';

class carouselSlider1 extends StatefulWidget {
  const carouselSlider1({super.key});

  @override
  State<carouselSlider1> createState() => _carouselSlider1State();
}

class _carouselSlider1State extends State<carouselSlider1> {
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
          borderRadius: BorderRadius.circular(5),
        ),
        margin: const EdgeInsets.only(top: 3, bottom: 3),
        width: screenWidth,
        height: screenHeight,
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: SizedBox(
                width: 60,
                height: 60,
                child: Image.asset(
                  'assets/images/carousel/inflasi_bulanan_icon.png',
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
                        "Inflasi Bulanan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "Inflasi Agustus 2022 = 0,05%",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "Inflasi YoY Agustus 2022 = 6,05%",
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}




// ignore_for_file: camel_case_types