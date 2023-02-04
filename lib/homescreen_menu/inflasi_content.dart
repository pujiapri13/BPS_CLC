// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi_kota.dart';
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
                String thn = (isiinflasi[index = 0].created_at[0] +
                        isiinflasi[index = 0].created_at[1] +
                        isiinflasi[index = 0].created_at[2] +
                        isiinflasi[index = 0].created_at[3])
                    .toString();

                String tkif1 = isiinflasi[index = 1].sembako;
                String tkif2 = isiinflasi[index = 1].sandang;
                String tkif3 = isiinflasi[index = 1].perumahan;
                String tkif4 = isiinflasi[index = 1].perlengkapan;
                String tkif5 = isiinflasi[index = 1].kesehatan;
                String tkif6 = isiinflasi[index = 1].transportasi;
                String tkif7 = isiinflasi[index = 1].informasi;
                String tkif8 = isiinflasi[index = 1].rekreasi;
                String tkif9 = isiinflasi[index = 1].pendidikan;
                String tkif10 = isiinflasi[index = 1].penyedia_pangan;
                String tkif11 = isiinflasi[index = 1].perawatan_pribadi;
                String totaltingkat = isiinflasi[index = 1].total;

                String anif1 = isiinflasi[index = 0].sembako;
                String anif2 = isiinflasi[index = 0].sandang;
                String anif3 = isiinflasi[index = 0].perumahan;
                String anif4 = isiinflasi[index = 0].perlengkapan;
                String anif5 = isiinflasi[index = 0].kesehatan;
                String anif6 = isiinflasi[index = 0].transportasi;
                String anif7 = isiinflasi[index = 0].informasi;
                String anif8 = isiinflasi[index = 0].rekreasi;
                String anif9 = isiinflasi[index = 0].pendidikan;
                String anif10 = isiinflasi[index = 0].penyedia_pangan;
                String anif11 = isiinflasi[index = 0].perawatan_pribadi;
                String totalandil = isiinflasi[index = 0].total;

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
                                      tkif1,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif1,
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
                                      tkif2,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif2,
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
                                      tkif3,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif3,
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
                                      tkif4,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif4,
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
                                      tkif5,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif5,
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
                                      tkif6,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif6,
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
                                      tkif7,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif7,
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
                                      tkif8,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif8,
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
                                      tkif9,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif9,
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
                                      tkif10,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif10,
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
                                      tkif11,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      anif11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Total
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
                                        "Inflasi Total",
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
                                    child: Center(
                                      child: Text(
                                        totaltingkat,
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
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.cyan,
                                    child: Center(
                                      child: Text(
                                        totalandil,
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
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 2),
                        child: Center(
                          child: Text(
                            "Perkembangan Inflasi Enam Kota Jawa Tengah (Persen) Tahun " +
                                isiinflasi[index = 0].created_at[0] +
                                isiinflasi[index = 0].created_at[1] +
                                isiinflasi[index = 0].created_at[2] +
                                isiinflasi[index = 0].created_at[3],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: SizedBox(
                          height: 400,
                          width: screenWidth,
                          child: const InflasiKota(),
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
