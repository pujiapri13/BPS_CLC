import 'package:bulleted_list/bulleted_list.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bps_cilacap/Icons/more_icons_icons.dart';

class KonsepDefinisi extends StatefulWidget {
  const KonsepDefinisi({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<KonsepDefinisi> createState() => _KonsepDefinisiState();
}

final Uri _urlSirusa = Uri.parse('https://sirusa.bps.go.id/sirusa/');

class _KonsepDefinisiState extends State<KonsepDefinisi> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardE = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardF = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardG = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardH = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsep & Definisi'),
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
      body: Column(
        children: <Widget>[
          //<<< Konten
          Flexible(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.black87,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: ListView(
                      children: <Widget>[
                        //<<< cardA
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardA,
                            title: const Text('EKSPOR & IMPOR'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Sistem Perdagangan",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Statistik ekspor berdasarkan pada Sistem Perdagangan Umum yang meliputi seluruh area geografi Indonesia",
                                            "Statistik impor berdasarkan pada Sistem Perdagangan Khusus yang meliputi seluruh area geografi Indonesia kecuali Zona Perdagangan Bebas dimana berlaku Perdagangan Luar Negeri",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Penilaian",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Ekspor mengacu pada nilai Fire On Board (FOB)",
                                            "Impor mengacu pada nilai Cost Insurance and Freight (CIF)",
                                            "Keduanya dinyatakan dalam Dollar Amerika (USD)",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Rekan Negara",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Negara tujuan adalah negara yang pada saat pengiriman diketahui sebagai negara terakhir dimana barang tersebut akan terkirim.",
                                            "Negara asal adalah negara dimana barang-barang tersebut diproduksi, setelah diverifikasi oleh Kantor Bead Cukai, sesuai dengan peraturan.",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //>>> /cardA
                        //<<< cardB
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardB,
                            title: const Text('TENAGA KERJA'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Angkatan Kerja",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'adalah penduduk usia kerja (15 tahun dan lebih) yang bekerja, atau punya pekerjaan namun sementara tidak bekerja dan pengangguran',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Pengangguran Terbuka",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Mereka yang tak punya pekerjaan dan mencari pekerjaan.",
                                            "Mereka yang tak punya pekerjaan dan mempersiapkan usaha.",
                                            "Mereka yang tak punya pekerjaan dan tidak mencari pekerjaan, karena merasa tidak mungkin mendapatkan pekerjaan.",
                                            "Mereka yang sudah punya pekerjaan, tetapi belum mulai bekerja."
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Tingkat Pengangguran Terbuka (TPT)",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'adalah persentase jumlah pengangguran terhadap jumlah angkatan kerja.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Setelah Penganggur",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'adalah mereka yang bekerja di bawah jam kerja normal (kurang dari 35 jam seminggu), dan masih mencari pekerjaan atau masih bersedia menerima pekerjaan (dahulu disebut setengah pengangguran terpaksa).',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardB
                        //<<< cardC
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardC,
                            title: const Text('KEMISKINAN'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Penduduk Miskin",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Untuk mengukur kemiskinan, BPS menggunakan konsep kemampuan memenuhi kebutuhan dasar (basic needs approach). Dengan pendekatan ini kemiskinan dipandang sebagai ketidakmampuan dari sisi ekonomi untuk memenuhi kebutuhan dasar makanan dan bukan makanan yang diukur dari sisi pengeluaran. Jadi Penduduk Miskin adalah penduduk yang memiliki rata-rata pengeluaran perkapita perbulan dibawah garis kemiskinan.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            'Sumber data utama yang dipakai adalah data Survei Sosial Ekonomi Nasional (SUSENAS) Panel Modul Konsumsi dan Kor.',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Garis Kemiskinan",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Garis Kemiskinan (GK) merupakan penjumlahan dari Garis Kemiskinan Makanan (GKM) dan Garis Kemiskinan Non Makanan (GKNM). Penduduk yang memiliki rata-rata pengeluaran perkapita perbulan dibawah Garis Kemiskinan dikategorikan sebagai penduduk miskin.",
                                            "Garis Kemiskinan Makanan (GKM) merupakan nilai pengeluaran kebutuhan minimum makanan yang disertakan dengan 2100 kilokalori perkapita perhari. Paket komoditi kebutuhan dasar makanan diwakili oleh 52 jenis komoditi (padi-padian, umbi-umbian, ikan, daging, telur dan susu, sayuran, kacang-kacangan, buah-buahan, minyak dan lemak, dll)",
                                            "Garis Kemiskinan Non Makanan (GKNM) adalah kebutuhan minimum untuk perumahan, sandang, pendidikan dan kesehatan. Paket komoditi kebutuhan dasar non makanan diwakili oleh 51 jenis komoditi di perkotaan dan 47 jenis komoditi di pedesaan.",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Persentase Penduduk Miskin",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Head Count Index (HCI-P0) adalah persentase penduduk yang berada dibawah Garis Kemiskinan (GK).',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Index Kedalaman Kemiskinan",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Index Kedalaman Kemiskinan (Poverty Gap Index P-1), merupakan ukuran rata-rata kesenjangan pengeluaran masing-masing penduduk miskin terhadap garis kemiskinan. Semakin tinggi nilai index, semakin jauh rata-rata pengeluaran pesuduk dari garis kemiskinan',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Index Keparahan Kemiskinan",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Index Keparahan Kemiskinan (Poverty Severity Index-P2) memberikan gambaran mengenai penyebaran pengeluaran diantara penduduk miskin. Semakin tinggi nilai indeks, semakin tinggi ketimpangan pengeluaran diantara penduduk miskin.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardC
                        //<<< cardD
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardD,
                            title: const Text('GINI RASIO'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Deskripsi",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Angka Gini Rasio terletak antara 0-1 dan apabila angka ini makin mendekati 0 (nol) berarti semakin rendah tingkat ketimpangannya. Sebaliknya apabila angka ini semakin mendekati 1 (satu) berarti semakin tinggi tingkat ketimpangan (jurang pemisah antara si kaya dan si miskin lebar).',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Kriteria Bank Dunia",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Pada prinsipnya Kriteria Bank Dunia membagi penduduk ke dalam 3 (tiga) kelompok pendapatan, yaitu 40 persen kelompok penduduk berpendapatan rendah, 40 persen kelompok penduduk berpendapatan sedang dan 20 persen kelompok penduduk berpendapatan tinggi. Pengelompokan seperti ini pada dasarnya sama dengan menggunakan cara desil (decile), yaitu 40 persen pertama sama dengan desil ke-4, 40 persen kedua sama dengan desil ke-8, dan 20 persen terakhir adalah desil ke-10.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardD
                        //<<< cardE
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardE,
                            title: const Text('INFLASI'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Definisi",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'adalah kenaikan harga barang dan jasa secara umum dimana barang dan jasa tersebut merupakan kebutuhan pokok masyarakat atau turunnya daya jual mata uang suatu negara.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "IHK (Indeks Harga Konsumen)",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'adalah adalah suatu indeks, yang menghitung rata-rata perubahan harga dalam suatu periode, dari suatu kumpulan barang dan jasa yang dikonsumsi oleh penduduk/rumah tangga dalam kurun waktu tertentu.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Metodologi",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Statistik harga, khususnya statistik harga konsumen dikumpulkan dalam rangka penghitungan Indeks Harga Konsumen (IHK). Penghitungan IHK ditujukan untuk mengetahui perubahan harga dari sekelompok tetap barang/jasa yang pada umumnya dikonsumsi masyarakat. Perubahan IHK dari waktu ke waktu menggambarkan tingkat kenaikan (inflasi) atau tingkat penurunan (deflasi) dari barang/jasa kebutuhan rumah tangga sehari-hari.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            'Indeks Harga Konsumen Indonesia dihitung dengan rumus Laspeyres termodifikasi. Dalam penghitungan rata-rata harga komoditas, ukuran yang digunakan adalah rata-rata aritmatik, tetapi untuk beberapa komoditas seperti beras, minyak goreng, bensin, dan sebagainya digunakan rata-rata geometri.',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            'Mulai Januari 2014, IHK disajikan dengan menggunakan tahun dasar 2012-100 dan mencakup 82 kota yang terdiri dari 33 ibu kota propinsi dan 49 kota-kota besar di seluruh Indonesia. IHK sebelumnya menggunakan tahun dasar 2007-100 dan hanya mencakup 66 kota.',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            'Dalam menyusun IHK, data harga konsumen diperoleh dari 82 kota, mencakup antara 225 s.d. 462 barang dan jasa yang dikelompokkan ke dalam tujuh kelompok pengeluaran yaitu: bahan makanan; makanan jadi, minuman, rokok dan tembakau; perumahan, air, listrik, gas dan bahan bakar; sandang; kesehatan; pendidikan, rekreasi dan olah raga; serta transpor, komunikasi dan jasa keuangan. Setiap kelompok terdiri dari beberapa sub kelompok, dan dalam setiap sub kelompok terdapat beberapa komoditas. Lebih jauh, komoditas-komoditas tersebut memiliki beberapa kualitas atau spesifikasi.',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            'Beberapa pasar tradisional, pasar modern, dan outlet di setiap kota dipilih untuk mewakili harga-harga dalam kota tersebut. Data harga masing-masing komoditi diperoleh melalui wawancara langsung dari 3 atau 4 pedagang eceran, yang didatangi oleh petugas pengumpul data.',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            'Penarikan sampel secara purposive digunakan untuk melakukan pemilihan kota, pasar, outlet, responden, komoditas dan kualitas dalam penghitungan IHK. (yang paling dominan).',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardE
                        //<<< cardF
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardF,
                            title: const Text('PDRB'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Produk Domestik Regional Bruto (PDRB) Atas Dasar Harga Pasar",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Produk Domestik Regional Bruto atas dasar harga pasar adalah jumlah nilai tambah bruto (gross value added) yang timbul dari seluruh sektor perekonomian di suatu wilayah. Nilai tambah adalah nilai yang ditambahkan dari kombinasi faktor produksi dan bahan baku dalam proses produksi. Penghitungan nilai tambah adalah nilai produksi (output) dikurangi biaya antara. Nilai tambah bruto di sini mencakup komponen-komponen pendapatan faktor (upah dan gaji, bunga, sewa tanah dan keuntungan), penyusutan dan pajak tidak langsung neto. Jadi dengan menjumlahkan nilai tambah bruto dari masing-masing sektor dan menjumlahkan nilai tambah bruto dari seluruh sektor tadi, akan diperoleh Produk Domestik Regional Bruto atas dasar harga pasar.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Produk Domestik Regional Neto (PDRN) Atas Dasar Harga Pasar",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Perbedaan antara konsep neto di sini dan konsep bruto di atas, ialah karena pada konsep bruto di atas; penyusutan masih termasuk di dalamnya, sedangkan pada konsep neto ini komponen penyusutan telah dikeluarkan. Jadi Produk Domestik Regional Bruto atas dasar harga pasar dikurangi penyusutan akan diperoleh Produk Domestik Regional Neto atas dasar harga pasar. Penyusutan yang dimaksud di sini ialah nilai susutnya (ausnya) barang-barang modal yang terjadi selama barang-barang modal tersebut ikut serta dalam proses produksi. Jika nilai susutnya barang-barang modal dari seluruh sektor ekonomi dijumlahkan, maka hasilnya merupakan penyusutan yang dimaksud di atas.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Produk Domestik Regional Neto (PDRN) Atas Dasar Biaya Faktor",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Perbedaan antara konsep biaya faktor di sini dan konsep harga pasar di atas, ialah karena adanya pajak tidak langsung yang dipungut pemerintah dan subsidi yang diberikan oleh pemerintah kepada unit-unit produksi. Pajak tidak langsung ini meliputi pajak penjualan, bea ekspor dan impor, cukai dan lain-lain pajak, kecuali pajak pendapatan dan pajak perseorangan. Pajak tidak langsung dari unit-unit produksi dibebankan pada biaya produksi atau pada pembeli hingga langsung berakibat menaikkan harga barang. Berlawanan dengan pajak tidak langsung yang berakibat menaikkan harga tadi, ialah subsidi yang diberikan pemerintah kepada unit-unit produksi, yang bisa mengakibatkan penurunan harga. Jadi pajak tidak langsung dan subsidi mempunyai pengaruh terhadap harga barang-barang, hanya yang satu berpengaruh menaikkan sedang yang lain menurunkan harga, hingga kalau pajak tidak langsung dikurangi subsidi akan diperoleh pajak tidak langsung neto. Kalau Produk Domestik Regional Neto atas dasar harga pasar dikurangi dengan pajak tidak langsung neto, maka hasilnya adalah Produk Domestik Regional Neto atas dasar biaya faktor.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardF
                        //<<< cardG
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardG,
                            title: const Text('NTP'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Pengertian Umum",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "NTP merupakan indikator proxy kesejahteraan petani",
                                            "NTP merupakan perbandingan antara Indeks harga yang diterima petani (It) dengan Indeks harga yang dibayar petani (Ib)",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Arti Angka NTP",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "NTP > 100, berarti petani mengalami surplus. Harga produksi naik lebih besar dari kenaikan harga konsumsinya. Pendapatan petani naik lebih besar dari pengeluarannya.",
                                            "NTP = 100, berarti petani mengalami impas. Kenaikan/penurunan harga produksinya sama dengan persentase kenaikan/penurunan harga barang konsumsi. Pendapatan petani sama dengan pengeluarannya.",
                                            "NTP < 100, berarti petani mengalami defisit. Kenaikan harga produksi relatif lebih kecil dibandingkan dengan kenaikan harga barang konsumsinya. Pendapatan petani turun, lebih kecil dari pengeluarannya.",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Kegunaan dan Manfaat",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Dari Indeks Harga Yang Diterima Petani (It), dapat dilihat fluktuasi harga barang-barang yang dihasilkan petani. Indeks ini digunakan juga sebagai data penunjang dalam penghitungan pendapatan sektor pertanian.",
                                            "Dari Indeks Harga Yang Dibayar Petani (lb), dapat dilihat fluktuasi harga barang-barang yang dikonsumsi oleh petani yang merupakan bagian terbesar dari masyarakat di pedesaan, serta fluktuasi harga barang yang diperlukan untuk memproduksi hasil pertanian. Perkembangan lb juga dapat menggambarkan perkembangan inflasi di pedesaan.",
                                            "NTP mempunyai kegunaan untuk mengukur kemampuan tukar produk yang dijual petani dengan produk yang dibutuhkan petani dalam produksi dan konsumsi rumah tangga.",
                                            "Angka NTP menunjukkan tingkat daya saing produk pertanian dibandingkan dengan produk lain. Atas dasar ini upaya produk spesialisasi dan peningkatan kualitas produk pertanian dapat dilakukan.",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Cakupan Komoditas",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Sub Sektor Tanaman Pangan seperti: padi, palawija",
                                            "Sub Sektor Hortikultura seperti : Sayur-sayuran, buah-buahan, tanaman hias dan tanaman obat-obatan",
                                            "Sub Sektor Tanaman Perkebunan Rakyat (TPR) seperti: kelapa, kopi robusta, cengkeh, tembakau, dan kapuk odolan. Jumlah komoditas ini juga bervariasi antara daerah",
                                            "Sub Sektor Peternakan seperti : ternak besar (sapi, kerbau), ternak kecil (kambing, domba, babi, dll), unggas (ayam, itik, dll), hasil-hasil ternak (susu sapi, telur, dll)",
                                            "Sub Sektor Perikanan, baik perikanan tangkap maupun perikanan budidaya",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardG
                        //<<< cardH
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: ExpansionTileCard(
                            baseColor: Colors.white,
                            expandedColor:
                                const Color.fromARGB(200, 255, 255, 255),
                            key: cardH,
                            title: const Text('IPM'),
                            expandedTextColor: Colors.black,
                            children: <Widget>[
                              const Divider(
                                thickness: 1.0,
                                height: 1.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          "Pembangunan Manusia",
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Pembangunan manusia didefinisikan sebagai proses perluasan pilihan bagi penduduk (a process of enlarging the choices of people). Tujuan utama pembangunan adalah menciptakan lingkungan yang memungkinkan rakyat untuk menikmati umur panjang, sehat, dan menjalankan kehidupan yang produktif (United Nation Development Programme - UNDP).',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Index Pembangunan Manusia (IPM)",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const Text(
                                          'Indeks Pembangunan Manusia (IPM) mengukur capaian pembangunan manusia berbasis sejumlah komponen dasar kualitas hidup. Sebagai ukuran kualitas hidup, IPM dibangun melalui pendekatan tiga dimensi dasar. Dimensi tersebut mencakup umur panjang dan sehat; pengetahuan, dan kehidupan yang layak. Ketiga dimensi tersebut memiliki pengertian sangat luas karena terkait banyak faktor. Untuk mengukur dimensi kesehatan digunakan angka harapan hidup waktu lahir. Selanjutnya untuk mengukur dimensi pengetahuan digunakan gabungan indikator rata-rata lama sekolah dan harapan lama sekolah. Adapun untuk mengukur dimensi hidup layak digunakan indikator kemampuan daya beli masyarakat terhadap sejumlah kebutuhan pokok makanan dan bukan makanan, yang dilihat dari rata-rata besarnya pengeluaran per kapita sebagai pendekatan pendapatan yang mewakili capaian pembangunan untuk hidup layak.',
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: SizedBox(
                                          width: screenWidth,
                                          child: const Text(
                                            "Komponen IPM",
                                            style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth,
                                        child: const BulletedList(
                                          listItems: [
                                            "Angka Harapan Hidup saat lahir",
                                            "Rata-rata Lama Sekolah",
                                            "Harapan Lama Sekolah",
                                            "Pengeluaran Perkapita Disesuaikan",
                                          ],
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), // >>> /cardH
                        //<<< Selengkapnya
                        SizedBox(
                          height: screenHeight * 0.07,
                          child: Expanded(
                            child: Flexible(
                              fit: FlexFit.tight,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: _launchUrlSirusa,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Selengkapnya  ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Icon(
                                        MoreIcons.more,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //>>> /Selengkapnya
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrlSirusa() async {
  if (!await launchUrl(_urlSirusa)) {
    throw 'Could not launch $_urlSirusa';
  }
}
