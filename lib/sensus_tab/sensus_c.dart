import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';

class SensusC extends StatefulWidget {
  const SensusC({super.key});

  @override
  State<SensusC> createState() => _SensusCState();
}

RepositoryPendudukUmur repositorypendudukumur = RepositoryPendudukUmur();

class _SensusCState extends State<SensusC> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWeight = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorypendudukumur.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenduduk = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {

              //isi data
              String thn = isipenduduk[index = 0].tanggal[0] +
                  isipenduduk[index = 0].tanggal[1] +
                  isipenduduk[index = 0].tanggal[2] +
                  isipenduduk[index = 0].tanggal[3];
              double totalNasional = 270.20;
              double lkNasional = 136.66;
              double prNasional = 133.54;
              double rasioNasional = 102;
              double persenPostGenZ = 10.88;
              double persenGenZ = 27.94;
              double persenMilenial = 25.87;
              double persenGenX = 21.88;
              double persenBabyBoomer = 11.56;
              double persenPreBoomer = 1.87;
              
              return Container(
                margin: const EdgeInsets.all(2),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.1,
                      margin: const EdgeInsets.only(bottom: 2),
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "Sensus Penduduk $thn (SP$thn) mencatat jumlah penduduk Indonesia sebanyak :",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Center(
                          child: Text(
                        "$totalNasional juta",
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(47, 182, 224, 1),
                        ),
                      )),
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  "$lkNasional juta",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text("jiwa LAKI-LAKI")
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Image.asset(
                                './assets/images/sensus/sensus.png',
                                width: 80,
                                height: 80,
                              ),
                            ),
                            Text(
                              "Rasio ${rasioNasional.toStringAsFixed(2)}",
                              style: const TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text(
                                  "$prNasional juta",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text("jiwa PEREMPUAN")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: screenHeight * 0.05,
                      thickness: 3,
                    ),
                    SizedBox(
                      width: screenWeight,
                      child: const Text(
                        "Komposisi Penduduk menurut Generasi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      color: Colors.transparent,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Post Generasi Z : ${persenPostGenZ.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang s/d 7 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Generasi Z : ${persenGenZ.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 8-23 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Milenial : ${persenMilenial.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 24-39 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Generasi X : ${persenGenX.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 40-55 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Baby Boomer : ${persenBabyBoomer.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 56-74 tahun",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.man_rounded,
                          size: 50,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: Text(
                                "Pre-Boomer : ${persenPreBoomer.toStringAsFixed(2)}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              width: screenWeight * 0.7,
                              child: const Text(
                                "Perkiraan usia sekarang 75 tahun keatas",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWeight * 0.5,
                child: const LinearProgressIndicator(
                  color: Colors.cyan,
                  minHeight: 1,
                ),
              ),
              const Text("Memuat Data"),
            ],
          );
        }
        if (snapshot.connectionState == ConnectionState.none) {
          return Center(
              child: Column(
            children: const [
              Icon(Icons.error_outline),
              Text("Data Kosong"),
            ],
          ));
        } else {
          return Column(
            children: const [
              Icon(Icons.error_outline),
              Text("DATABASE ERROR"),
            ],
          );
        }
      },
    );
  }
}
