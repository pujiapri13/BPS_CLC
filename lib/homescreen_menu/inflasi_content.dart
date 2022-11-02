// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_inflasi.dart';
import 'package:flutter/material.dart';

class inflasiContent extends StatefulWidget {
  const inflasiContent({Key? key}) : super(key: key);

  @override
  State<inflasiContent> createState() => _inflasiContentState();
}

RepositoryInflasi repositoryinflasi = RepositoryInflasi();

class _inflasiContentState extends State<inflasiContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'INFLASI',
          style: TextStyle(fontSize: 17),
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
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Inflasi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "   Inflasi merupakan indikator perkembangan harga barang dan jasa yang dikonsumsi masyarakat. Barang dan jasa tersebut jumlahnya sangat banyak, namun 'keranjang' barang dan jasa yang digunakan untuk menghitung konsumsi rumah tangga seluruhnya berjumlah 306 komoditas (untuk Kota Cilacap). Angka tersebut merupakan hasil Survei Biaya Hidup (SBH) tahur 2018 yang merupakan patokan untuk menyususn inflasi.",
                                  textAlign: TextAlign.justify,
                                ),
                                Text(
                                  "   Inflasi dihitung berdasarkan Indeks Harga Konsumen (IHK) dengan menggunakan rumus Laspeyres yang dimodifikasi (Modified Laspeyres). Rumus tersebut mengacu pada manual Organisasi Buruh Dunia (International Labor Organization/ILO)",
                                ),
                                Text(
                                  "   Pengelompokkan IHK berdasarkan pada klasifikasi internasiona baku yang tertuang dalam Classification of Individual Consumption According to Purpose (COICOP). Mulai Januari 2020, COICOP yang digunakanan adalah COICOP 2018 yang dimodifikasi dari 13 divisi COICOP menjadi 11 kelompok IHK.",
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Inflasi IHK atau Inflasi Umum (Headline Inflation)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Adalah inflasi seluruh barang/jasa yang dimonitor harganya secara periodik. Inflasi umum adalah komposit dari inflasi inti inflasi administered prices, dan inflasi volatile goods.",
                                  textAlign: TextAlign.justify,
                                ),
                                const Text(
                                  "   Secara umum penghitungan inflasi dari IHK mengikuti rumus berikut :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_1.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                                const Text(
                                  "   Sebagai contoh, untuk menghitung inflasi Bulan Juli 2020 digunakan rumus :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_2.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                                const Text(
                                  "   Inflasi Tahunan dihitung secara titik per titik (point-to-point) dalam skala bulanan maupun tahunan",
                                ),
                                const Text(
                                  "   Sebagai contoh, untuk menghitung inflasi tahun kalender pada Bulan Juli 2020 digunakan rumus :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_3.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                                const Text(
                                  "   Sedangkan untuk menghitung inflasi tahun ke tahun pada Bulan Juli 2020 digunakan rumus :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_4.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
      ),
      body: FutureBuilder(
        future: repositoryinflasi.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiinflasi = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String thn = (isiinflasi[index = 0].tanggal[0] +
                        isiinflasi[index = 0].tanggal[1] +
                        isiinflasi[index = 0].tanggal[2] +
                        isiinflasi[index = 0].tanggal[3])
                    .toString();

                double tkif1 = 3.59;
                double tkif2 = 1.24;
                double tkif3 = 1.22;
                double tkif4 = 3.73;
                double tkif5 = 1.92;
                double tkif6 = -0.35;
                double tkif7 = 0.53;
                double tkif8 = -0.48;
                double tkif9 = 2.28;
                double tkif10 = 2.29;
                double tkif11 = -0.12;

                double anif1 = 1.08;
                double anif2 = 0.07;
                double anif3 = 0.19;
                double anif4 = 0.18;
                double anif5 = 0.08;
                double anif6 = -0.04;
                double anif7 = 0.03;
                double anif8 = -0.01;
                double anif9 = 0.12;
                double anif10 = 0.20;
                double anif11 = -0.01;

                double mtom1 = 0.71;
                double mtom2 = 0.59;
                double mtom3 = 0.66;
                double mtom4 = 0.89;
                double mtom5 = 0.93;
                double mtom6 = 0.63;
                double mtom7 = 0.61;

                double ytod1 = 5.00;
                double ytod2 = 4.46;
                double ytod3 = 4.02;
                double ytod4 = 4.82;
                double ytod5 = 3.24;
                double ytod6 = 4.43;
                double ytod7 = 3.19;

                double yony1 = 6.47;
                double yony2 = 6.11;
                double yony3 = 5.03;
                double yony4 = 6.51;
                double yony5 = 4.30;
                double yony6 = 6.01;
                double yony7 = 4.35;

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 2),
                          child: Center(
                            child: Text(
                              "Inflasi dan Andil Inflasi Kabupaten Cilacap Tahun " +
                                  thn +
                                  " menurut Kelompok Pengeluaran",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
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
                                        "Kelompok Pengeluaran",
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
                                        "Tingkat Inflasi",
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
                                        "Andil Inflasi",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Makanan, Minuman, Tembakau
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Makanan, Minuman, Tembakau",
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
                                      tkif1.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif1.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Pakaian dan Alas Kaki
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Pakaian dan Alas Kaki",
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
                                      tkif2.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif2.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Perumahan, Air, Listrik, BB lain
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Perumahan, Air, Listrik, BB lain",
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
                                      tkif3.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif3.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Perlengkapan, Pemeliharaan Rutin Rumah Tangga
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Perlengkapan, Pemeliharaan Rutin Rumah Tangga",
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
                                      tkif4.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif4.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Kesehatan
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Kesehatan",
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
                                      tkif5.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif5.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Transportasi
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Transportasi",
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
                                      tkif6.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif6.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Informasi, Komunikasi, Keuangan
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Informasi, Komunikasi, Keuangan",
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
                                      tkif7.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif7.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Rekreasi, Olahraga, Budaya
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Rekreasi, Olahraga, Budaya",
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
                                      tkif8.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif8.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Pendidikan
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Pendidikan",
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
                                      tkif9.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif9.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Penyedia Makanan Minuman / Restoran
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Penyedia Makanan Minuman / Restoran",
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
                                      tkif10.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif10.toString(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Perawatan Pribadi, Jasa Lainnya
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: const Center(
                                      child: Text(
                                        "Perawatan Pribadi, Jasa Lainnya",
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
                                      tkif11.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif11.toString(),
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
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 2),
                          child: Center(
                            child: Text(
                              "Perkembangan Inflasi Enam Kota Jawa Tengah (Persen) " +
                                  isiinflasi[index = 0].tanggal,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          )),
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
                                    child: const Center(
                                      child: Text(
                                        "Cilacap",
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
                                      mtom1.toString(),
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
                                      ytod1.toString(),
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
                                      yony1.toString(),
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
                                    child: const Center(
                                      child: Text(
                                        "Purwokerto",
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
                                      mtom2.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod2.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony2.toString(),
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
                                    child: const Center(
                                      child: Text(
                                        "Kudus",
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
                                      mtom3.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod3.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony3.toString(),
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
                                    child: const Center(
                                      child: Text(
                                        "Surakarta",
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
                                      mtom4.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod4.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony4.toString(),
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
                                    child: const Center(
                                      child: Text(
                                        "Semarang",
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
                                      mtom5.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod5.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony5.toString(),
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
                                    child: const Center(
                                      child: Text(
                                        "Tegal",
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
                                      mtom6.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      ytod6.toString(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      yony6.toString(),
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
                                    child: const Center(
                                      child: Text(
                                        "Nasional",
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
                                        mtom7.toString(),
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
                                        ytod7.toString(),
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
                                        yony7.toString(),
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
