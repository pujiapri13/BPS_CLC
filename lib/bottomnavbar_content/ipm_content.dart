import 'package:bps_cilacap/grafik/grafik_ipm.dart';
import 'package:bps_cilacap/restAPI/repository_ipm.dart';

import 'package:flutter/material.dart';
import 'package:bps_cilacap/tabel/tabelIpm.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  _IpmContentState createState() => _IpmContentState();
}

class _IpmContentState extends State<IpmContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();

  List<Color> gradientColorsUhh = [
    const Color(0xff23b6e6),
    const Color.fromARGB(255, 30, 31, 30),
  ];
  List<Color> gradientColorsRls = [
    const Color.fromARGB(255, 35, 87, 230),
    const Color.fromARGB(255, 211, 2, 148),
  ];
  List<Color> gradientColorsHls = [
    const Color.fromARGB(255, 11, 211, 28),
    const Color.fromARGB(255, 43, 10, 133),
  ];
  List<Color> gradientColorsPpp = [
    const Color.fromARGB(255, 155, 230, 35),
    const Color.fromARGB(255, 211, 2, 2),
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Perkembangan IPM'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    constraints: BoxConstraints.tight(
                      Size(screenWidth, screenHeight),
                    ),
                    context: context,
                    builder: (context) {
                      return ListView(children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Pembangunan Manusia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Pembangunan Manusia didefinisikan sebagai perluasan pilihan bagi penduduk untuk hidup lebih panjang, lebih sehat, dan hidup lebih bermakna membangun hidupnya yang dianggap berharga (UNDP, HDR 1990).",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Indeks Pembangunan Manusia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   UNDP memperkenalkan suatu indikator yang dapat menggambarkan perkembangan pembangunan manusia secara terukur dan representatif, yang dinamakan Human Development Index (HDI) atau Indeks Pembangunan Manusia (IPM).",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   IPM dikembangkan oleh Amartya Sen (pemenang nobel berkebangsaan India) dan seorang ekonom Pakistan Mahbub ul Haq, serta dibantu oleh Gustav Ranis dari Universitas Yale dan Lord Meghnad Desai dari London School of Economics. Sejak it indeks ini dipakai oleh Program pembangunan PBB pada lapora IPM tahunannya.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Dimensi Dasar IPM",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Indeks Pembangunan Manusia (IPM) memiliki tiga dimensi yang digunakan sebagai dasar perhitungannya :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) Umur panjang dan hidup sehat yang diukur dengan Umur Harapan Hidup (UHH) saat kelahiran.",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) Pengetahuan yang dihitung dari angka Harapan Lama Sekolah/HLS (penduduk berusia 7 tahun ke atas) dan angka Rata-rata Lama Sekolah/RLS (penduduk berusia 25 tahun ke atas).",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) Standar hidup layak yang di tingkat nasional dihitung dari Produk Domestik Bruto/PDB (keseimbangan kemampuan berbelanja) per kapita, sedangkan di tingkat daerah dihitung dari pengeluaran per kapita per tahun.",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Manfaat IPM",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Indeks Pembangunan Manusia (IPM) memiliki beberapa manfaat antara lain :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) IPM merupakan indikator penting untuk mengukur keberhasilan dalam upaya membangun kualitas hidup manusia (masyarakat/penduduk).",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) IPM dapat menentukan peringkat atau level pembangunan suatu wilayah/negara.",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) Bagi Indonesia, IPM merupakan data strategis karena selain sebagai ukuran kinerja Pemerintah, IPM juga digunakan sebagai salah satu alokator penentuan Dana Alokasi Umum (DAU).",
                          ),
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined))
          ],
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
                        itemCount: 1,
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
                        flex: 6,
                        child: Container(
                          width: screenWidth,
                          color: Colors.cyan,
                          child: const Flexible(
                            child: tabelIpm(),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        fit: FlexFit.tight,
                        child: Container(
                            width: screenWidth,
                            color: Colors.transparent,
                            child: const Flexible(
                              child: grafikIpm(),
                            )),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(
                          color: const Color(0xff37434d),
                          child: Row(
                            children: [
                              const Divider(
                                color: Colors.transparent,
                                endIndent: 20,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: gradientColorsUhh)),
                              ),
                              const Text(
                                " UHH",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Divider(
                                color: Colors.transparent,
                                endIndent: 20,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: gradientColorsRls)),
                              ),
                              const Text(
                                " RLS",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Divider(
                                color: Colors.transparent,
                                endIndent: 20,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: gradientColorsHls)),
                              ),
                              const Text(
                                " HLS",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Divider(
                                color: Colors.transparent,
                                endIndent: 20,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: gradientColorsPpp)),
                              ),
                              const Text(
                                " PPP",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
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