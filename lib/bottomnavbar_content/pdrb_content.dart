// ignore_for_file: library_private_types_in_public_api
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
          backgroundColor: Colors.black87,
          title: const Center(child: Text('PDRB')),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 20,
              child: Container(
                margin: const EdgeInsets.all(5),
                width: double.infinity,
                height: screenHeight * 0.2,
                color: Colors.amber,
                //<<<edit isi dari sini
                child: Column(
                  children: <Widget>[
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(color: Colors.blue)),
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
      ),
    );
  }
}
