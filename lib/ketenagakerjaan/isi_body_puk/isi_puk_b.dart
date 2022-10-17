import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:flutter/material.dart';

class IsiPukB extends StatefulWidget {
  const IsiPukB({super.key});

  @override
  State<IsiPukB> createState() => _IsiPukBState();
}

RepositoryTenagaKerja repositoryTenagaKerja = RepositoryTenagaKerja();

class _IsiPukBState extends State<IsiPukB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryTenagaKerja.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isitenagakerja = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double akPr = isitenagakerja[index = 7].angkatan_kerja;
              double bkjPr = isitenagakerja[index = 7].bekerja;
              double pgrPr = isitenagakerja[index = 7].pengangguran;
              double bakPr = isitenagakerja[index = 7].bkn_angkatan_kerja;
              double sklPr = isitenagakerja[index = 7].sekolah;
              double rutaPr = isitenagakerja[index = 7].urus_ruta;
              double lainPr = isitenagakerja[index = 7].lainnya;
              double tpakPr = isitenagakerja[index = 7].tpak;
              double tkkPr = isitenagakerja[index = 7].tkk;
              double tptPr = isitenagakerja[index = 7].tpt;

              double akLk = isitenagakerja[index = 6].angkatan_kerja;
              double bkjLk = isitenagakerja[index = 6].bekerja;
              double pgrLk = isitenagakerja[index = 6].pengangguran;
              double bakLk = isitenagakerja[index = 6].bkn_angkatan_kerja;
              double sklLk = isitenagakerja[index = 6].sekolah;
              double rutaLk = isitenagakerja[index = 6].urus_ruta;
              double lainLk = isitenagakerja[index = 6].lainnya;
              double tpakLk = isitenagakerja[index = 6].tpak;
              double tkkLk = isitenagakerja[index = 6].tkk;
              double tptLk = isitenagakerja[index = 6].tpt;
              return SizedBox(
                height: 2000,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.05,
                            color: Colors.cyan,
                            child: const Center(
                              child: Text(
                                "Jenis Kegiatan",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.cyan,
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "Lk",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.cyan,
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "Pr",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.cyan,
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "Jml",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "Angkatan Kerja",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                akLk.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                akPr.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (akLk + akPr).toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "   - Bekerja",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                bkjLk.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(bkjPr.toStringAsFixed(2)),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (bkjLk + bkjPr).toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "   - Penganggur",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(pgrLk.toStringAsFixed(2)),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                pgrPr.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (pgrLk + pgrPr).toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "Bukan Angkatan Kerja",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                bakLk.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                bakPr.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (bakLk + bakPr).toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "   - Sekolah",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(sklLk.toStringAsFixed(2)),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                sklPr.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (sklLk + sklPr).toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "   - Mengurus Rumah Tangga",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                rutaLk.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                rutaPr.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (rutaLk + rutaPr).toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "   - Lainnya",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                lainLk.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                lainPr.toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (lainLk + lainPr).toStringAsFixed(2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.05,
                            color: Colors.cyan,
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            child: const Text(
                              "Total Penduduk Usia Kerja",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.cyan,
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (akLk + bakLk).toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.cyan,
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (akPr + bakPr).toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.cyan,
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                (akLk + akPr + bakLk + bakPr)
                                    .toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "TPAK",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                tpakLk.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                tpakPr.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "TKK",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                tkkLk.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                tkkPr.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Text(
                              "TPT",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                tptLk.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                tptPr.toStringAsFixed(2),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Center(child: Text("Data Belum Tersedia"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
