import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb.dart';
import 'package:flutter/material.dart';

class PdrbLapUs extends StatefulWidget {
  const PdrbLapUs({super.key});

  @override
  State<PdrbLapUs> createState() => _PdrbLapUsState();
}

class _PdrbLapUsState extends State<PdrbLapUs> {
  RepositoryPdrb repositorypdrb = RepositoryPdrb();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'PDRB AHB Menurut Lapangan Usaha',
              style: TextStyle(fontSize: 16),
            ),
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
          body: FutureBuilder(
            future: repositorypdrb.getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List isipdrb = snapshot.data as List;
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: screenWidth,
                          height: screenHeight * 0.05,
                          color: Colors.black87,
                          child: const Center(
                              child: Text(
                            "Dengan Migas",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        Container(
                          height: screenHeight * 0.75,
                          width: screenWidth,
                          child: Column(
                            children: [
                              // <-- Tabel Dengan Migas
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        color: Colors.grey,
                                        width: screenWidth,
                                        height: screenHeight * 0.1,
                                        child: Row(
                                          children: [
                                            const Flexible(
                                              flex: 3,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                "Lapangan Usaha",
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                isipdrb[index = 4].tanggal[0] +
                                                    isipdrb[index = 4]
                                                        .tanggal[1] +
                                                    isipdrb[index = 4]
                                                        .tanggal[2] +
                                                    isipdrb[index = 4]
                                                        .tanggal[3],
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                isipdrb[index = 3].tanggal[0] +
                                                    isipdrb[index = 3]
                                                        .tanggal[1] +
                                                    isipdrb[index = 3]
                                                        .tanggal[2] +
                                                    isipdrb[index = 3]
                                                        .tanggal[3],
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                isipdrb[index = 2].tanggal[0] +
                                                    isipdrb[index = 2]
                                                        .tanggal[1] +
                                                    isipdrb[index = 2]
                                                        .tanggal[2] +
                                                    isipdrb[index = 2]
                                                        .tanggal[3],
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                isipdrb[index = 1].tanggal[0] +
                                                    isipdrb[index = 1]
                                                        .tanggal[1] +
                                                    isipdrb[index = 1]
                                                        .tanggal[2] +
                                                    isipdrb[index = 1]
                                                        .tanggal[3],
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Flexible(
                                              flex: 2,
                                              fit: FlexFit.tight,
                                              child: Text(
                                                isipdrb[index = 0].tanggal[0] +
                                                    isipdrb[index = 0]
                                                        .tanggal[1] +
                                                    isipdrb[index = 0]
                                                        .tanggal[2] +
                                                    isipdrb[index = 0]
                                                        .tanggal[3],
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // <-- A
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].a.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Divider(),
                                      // <-- B
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].b.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Divider(),
                                      // C
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].c.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // D
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].d.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // E
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].e.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // F
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].f.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // G
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].g.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // H
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].h.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // I
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].i.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // J
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].j.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // K
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].k.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // L
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].l.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // M_N
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].m_n.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // O
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].o.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // P
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].p.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // Q
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].q.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // R_S_T_U
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Flexible(
                                                flex: 3,
                                                fit: FlexFit.tight,
                                                child: Text(isipdrb[index = 4].r_s_t_u.toString(),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Berlaku (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              const Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  "PDRB Atas Dasar Harga Konstan (Juta Rupiah)",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // -->
                              // <-- Grafik Dengan Migas
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.orange,
                                ),
                              ),
                              // -->
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth,
                          height: screenHeight * 0.05,
                          color: Colors.black87,
                          child: const Center(
                              child: Text(
                            "Tanpa Migas",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        // <-- Tanpa Migas
                        Container(
                          height: screenHeight * 0.75,
                          width: screenWidth,
                          child: Column(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // -->
                      ],
                    );
                  },
                );
              }
              if (snapshot.hasError) {
                return const Text("Database Error");
              }
              return const Center(child: CircularProgressIndicator());
            },
          )),
    );
  }
}
