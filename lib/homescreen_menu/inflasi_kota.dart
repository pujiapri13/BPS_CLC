import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InflasiKota extends StatefulWidget {
  const InflasiKota({super.key});

  @override
  State<InflasiKota> createState() => _InflasiKotaState();
}

RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();

class _InflasiKotaState extends State<InflasiKota> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryinflasikota.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiinflasikota = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String nama1 = isiinflasikota[index = 0].nama;
                String nama2 = isiinflasikota[index = 1].nama;
                String nama3 = isiinflasikota[index = 2].nama;
                String nama4 = isiinflasikota[index = 3].nama;
                String nama5 = isiinflasikota[index = 4].nama;
                String nama6 = isiinflasikota[index = 5].nama;
                String nama7 = isiinflasikota[index = 6].nama;

                double mtom1 = double.parse(isiinflasikota[index = 0].mtom);
                double mtom2 = double.parse(isiinflasikota[index = 1].mtom);
                double mtom3 = double.parse(isiinflasikota[index = 2].mtom);
                double mtom4 = double.parse(isiinflasikota[index = 3].mtom);
                double mtom5 = double.parse(isiinflasikota[index = 4].mtom);
                double mtom6 = double.parse(isiinflasikota[index = 5].mtom);
                double mtom7 = double.parse(isiinflasikota[index = 6].mtom);

                double ytod1 = double.parse(isiinflasikota[index = 0].ytod);
                double ytod2 = double.parse(isiinflasikota[index = 1].ytod);
                double ytod3 = double.parse(isiinflasikota[index = 2].ytod);
                double ytod4 = double.parse(isiinflasikota[index = 3].ytod);
                double ytod5 = double.parse(isiinflasikota[index = 4].ytod);
                double ytod6 = double.parse(isiinflasikota[index = 5].ytod);
                double ytod7 = double.parse(isiinflasikota[index = 6].ytod);

                double yony1 = double.parse(isiinflasikota[index = 0].ytoy);
                double yony2 = double.parse(isiinflasikota[index = 1].ytoy);
                double yony3 = double.parse(isiinflasikota[index = 2].ytoy);
                double yony4 = double.parse(isiinflasikota[index = 3].ytoy);
                double yony5 = double.parse(isiinflasikota[index = 4].ytoy);
                double yony6 = double.parse(isiinflasikota[index = 5].ytoy);
                double yony7 = double.parse(isiinflasikota[index = 6].ytoy);

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.cyan,
                                    child: const Center(
                                      child: Text(
                                        "Kota Inflasi",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.cyan,
                                    child: const Center(
                                      child: Text(
                                        "M to M",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.cyan,
                                    child: const Center(
                                      child: Text(
                                        "Y to D",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.cyan,
                                    child: const Center(
                                      child: Text(
                                        "Y on Y",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Cilacap
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama1.capitalize(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      mtom1.toStringAsFixed(2),
                                      style: const TextStyle(
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod1.toStringAsFixed(2),
                                      style: const TextStyle(
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony1.toStringAsFixed(2),
                                      style: const TextStyle(
                                          color: Colors.cyan,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Purwokerto
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama2.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      mtom2.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod2.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony2.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Kudus
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama3.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      mtom3.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod3.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony3.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Surakarta
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama4.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      mtom4.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod4.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony4.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Semarang
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama5.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      mtom5.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod5.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony5.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Tegal
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama6.capitalize(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      mtom6.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod6.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony6.toStringAsFixed(2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Nasional
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.cyan,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        nama7.capitalize(),
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.cyan,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        mtom7.toStringAsFixed(2),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.cyan,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        ytod7.toStringAsFixed(2),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    color: Colors.cyan,
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(
                                        yony7.toStringAsFixed(2),
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('Database Error');
          } else {
            return const Center(
                child: CircularProgressIndicator(strokeWidth: 3));
          }
        },
      ),
    );
  }
}

extension MyExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
