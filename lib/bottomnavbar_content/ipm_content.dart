import 'package:bps_cilacap/grafik/grafik_ipm.dart';
import 'package:bps_cilacap/repository_ipm.dart';
import 'package:bps_cilacap/tabel/tabelPdrb.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/tabel/tabelIpm.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  _IpmContentState createState() => _IpmContentState();
}

class _IpmContentState extends State<IpmContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var screenWeight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Perkembangan IPM'),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(2),
          child: Column(
            children: <Widget>[
              Container(
                height: screenHeight * 0.1,
                margin: const EdgeInsets.only(bottom: 2),
                color: Colors.black,
                child: FutureBuilder(
                  future: repositoryipm.getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List isiipm = snapshot.data as List;
                      return PageView.builder(
                        itemBuilder: (context, index) {
                          return Center(
                            child: Text(
                              "Perkembangan IPM beserta Komponennya Kabupaten Cilacap, " +
                                  isiipm[index = 4].tanggal[0] +
                                  isiipm[index = 4].tanggal[1] +
                                  isiipm[index = 4].tanggal[2] +
                                  isiipm[index = 4].tanggal[3] +
                                  " - " +
                                  isiipm[index = 0].tanggal[0] +
                                  isiipm[index = 0].tanggal[1] +
                                  isiipm[index = 0].tanggal[2] +
                                  isiipm[index = 0].tanggal[3],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        },
                      );
                    }
                    if (snapshot.hasError) {
                      return const Text("Database Error");
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: screenHeight * 0.7,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(
                          width: screenWeight,
                          color: Colors.cyan,
                          child: const Flexible(
                            child: tabelIpm(),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            width: screenWeight,
                            color: Colors.transparent,
                            child: const Flexible(
                              child: grafikIpm(),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// ignore_for_file: library_private_types_in_public_api, prefer_interpolation_to_compose_strings