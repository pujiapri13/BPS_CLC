import 'package:bps_cilacap/about_icons_icons.dart';
import 'package:flutter/material.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({Key? key}) : super(key: key);

  @override
  State<TentangAplikasi> createState() => _TentangAplikasiState();
}

class _TentangAplikasiState extends State<TentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          color: Colors.black87,
          width: screenWidth,
          height: screenHeight,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: const Text(
                  'PUSDACAP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: screenWidth * 0.39,
                child: Row(
                  children: <Widget>[
                    const Flexible(
                      fit: FlexFit.loose,
                      flex: 3,
                      child: Text(
                        'Made with',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Icon(
                        Icons.favorite,
                        size: 22,
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'MAJENANG',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 30),
              ),
              SizedBox(
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.1,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.1,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                AboutIcons.frame,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.4,
                              height: screenHeight * 0.1,
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                '   Work with Us',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.1,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.1,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                AboutIcons.framebrowser,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.4,
                              height: screenHeight * 0.1,
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                '   cilacapkab.go.id',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.1,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.1,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                AboutIcons.framecube,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.4,
                              height: screenHeight * 0.1,
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                '   Version 0.1.0',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
