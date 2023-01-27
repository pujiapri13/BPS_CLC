// ignore_for_file: unused_local_variable, prefer_interpolation_to_compose_strings
import 'package:bps_cilacap/restAPI/repository_sensus.dart';
import 'package:flutter/material.dart';

class SensusC extends StatefulWidget {
  const SensusC({super.key});

  @override
  State<SensusC> createState() => _SensusCState();
}

RepositorySensus sensus = RepositorySensus();

class _SensusCState extends State<SensusC> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWeight = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: sensus.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenduduk = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // isi data
              String thn = isipenduduk[index = 2].created_at[0] +
                  isipenduduk[index = 2].created_at[1] +
                  isipenduduk[index = 2].created_at[2] +
                  isipenduduk[index = 2].created_at[3];

              int lkTotal = int.parse(isipenduduk[index = 2].lk);
              int prTotal = int.parse(isipenduduk[index = 2].pr);

              double totalPostGenZ =
                  double.parse(isipenduduk[index = 2].post_gen_z);
              double totalGenZ = double.parse(isipenduduk[index = 2].gen_z);
              double totalMilenial =
                  double.parse(isipenduduk[index = 2].milenial);
              double totalGenX = double.parse(isipenduduk[index = 2].gen_x);
              double totalBabyBoomer =
                  double.parse(isipenduduk[index = 2].baby_boomer);
              double totalPreBoomer =
                  double.parse(isipenduduk[index = 2].pre_boomer);
              double totalGen = totalPostGenZ +
                  totalGenZ +
                  totalMilenial +
                  totalGenX +
                  totalBabyBoomer +
                  totalPreBoomer;
              double persenPostGenZ = totalPostGenZ / totalGen * 100;
              double persenGenZ = totalGenZ / totalGen * 100;
              double persenMilenial = totalMilenial / totalGen * 100;
              double persenGenX = totalGenX / totalGen * 100;
              double persenBabyBoomer = totalBabyBoomer / totalGen * 100;
              double persenPreBoomer = totalPreBoomer / totalGen * 100;

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
                          'Sensus Penduduk $thn (SP$thn) mencatat jumlah penduduk Indonesia sebanyak : ',
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
                        (lkTotal + prTotal).toString() + " juta jiwa",
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
                                  "$lkTotal",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text(
                                  "juta jiwa LAKI-LAKI",
                                  style: TextStyle(fontSize: 12),
                                )
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
                              "Rasio ${(lkTotal / prTotal * 100).toStringAsFixed(2)}",
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
                                  "$prTotal",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(47, 182, 224, 1),
                                  ),
                                ),
                                const Text(
                                  "juta jiwa PEREMPUAN",
                                  style: TextStyle(fontSize: 12),
                                )
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
                                "Post Generasi Z : ${totalPostGenZ.toStringAsFixed(0)}%",
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
                                "Generasi Z : ${totalGenZ.toStringAsFixed(0)}%",
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
                                "Milenial : ${totalMilenial.toStringAsFixed(0)}%",
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
                                "Generasi X : ${totalGenX.toStringAsFixed(0)}%",
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
                                "Baby Boomer : ${totalBabyBoomer.toStringAsFixed(0)}%",
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
                                "Pre-Boomer : ${totalPreBoomer.toStringAsFixed(0)}%",
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
