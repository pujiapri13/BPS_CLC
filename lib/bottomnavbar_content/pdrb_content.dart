// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/pdrb/distribusi_pdrb_adhb.dart';
import 'package:bps_cilacap/pdrb/distribusi_pdrb_adhk.dart';
import 'package:bps_cilacap/pdrb/laju_pertumbuhan_pdrb.dart';
import 'package:bps_cilacap/pdrb/pdrb_adhb_mlu.dart';
import 'package:bps_cilacap/pdrb/pdrb_adhk_mlu.dart';
import 'package:flutter/material.dart';

class PdrbContent extends StatefulWidget {
  const PdrbContent({Key? key}) : super(key: key);

  @override
  _PdrbContentState createState() => _PdrbContentState();
}

class _PdrbContentState extends State<PdrbContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(child: Text('PDRB')),
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
                            "PDRB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   PDRB (Produk Domestik Regional Bruto) adalah nilai tambah produksi yang diciptakan oleh sektor-sektor ekonomi.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Nilai tambah merupakan nilai yang ditambahkan atas nilai barang dan jasa sebagai biaya antara agar menjadi output.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Oleh karenanya secara matematis nilai tersebut dapat dihitung menggunakan formula sederhana sebagai berikut :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.center,
                          child: const Text(
                            "Nilai Tambah Bruto (NTB) = Output - Input antara",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   NTB merupakan balas jasa faktor produksi, yang terdiri dari komponen :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) Pendapatan faktor",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) Penyusutan barang modal tetap",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) pajak tak langsung neto",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Apabila penyusutan dikeluarka dari NTB maka akan diperoleh Nilai Tambah Neto.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Pendapatan faktor merupakan nilai tambah produsen atas penggunaan faktor-faktor produksi dalam proses produksi, yang terdiri dari unsur-unsur :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) Upah dan gaji sebagai balas jasa pegawai",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) Sewa tanah sebagai balas jasa tanah",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) Bunga sebagai balas jasa modal",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "4) Keuntungan sebagai balas jasa kewiraswastaan",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Penghitungan PDRB mempertimbangkan produksi domestik tanpa mempertimbangan kepemilikan faktor produksi.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Nilai PDRB disajikan melalui dua jenis harga, yaitu Atas Dasar Harga Berlaku (ADHB)/at current market prices, dan Atas Dasar Harga Konstan (ADHK)/constant prices.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Konsep atas dasar harga kosntan merupakan PDRB atas dasar harga berlaku yang telah 'dihilangkan' pengaruh perubahan harga.",
                              textAlign: TextAlign.justify),
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined))
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(2),
          child: Column(
            children: [
              const Divider(
                height: 5,
                color: Colors.transparent,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(47, 182, 224, 0.9))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CustomPageRoute(
                            child: const PdrbLapUs(),
                            direction: AxisDirection.left));
                  },
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        children: const [
                          Flexible(
                            flex: 8,
                            fit: FlexFit.tight,
                            child: Text(
                              "PDRB ADHB Menurut Lapangan Usaha",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.transparent,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(47, 182, 224, 0.9))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CustomPageRoute(
                            child: const PdrbAdhkLapUs(),
                            direction: AxisDirection.left));
                  },
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        children: const [
                          Flexible(
                            flex: 8,
                            fit: FlexFit.tight,
                            child: Text(
                              "PDRB ADHK Menurut Lapangan Usaha",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.transparent,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(47, 182, 224, 0.9))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CustomPageRoute(
                            child: const DistribusiPdrb(),
                            direction: AxisDirection.left));
                  },
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        children: const [
                          Flexible(
                            flex: 8,
                            fit: FlexFit.tight,
                            child: Text(
                              "Distribusi PDRB ADHB",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.transparent,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(47, 182, 224, 0.9))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CustomPageRoute(
                            child: const DistribusiPdrbAdhk(),
                            direction: AxisDirection.left));
                  },
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        children: const [
                          Flexible(
                            flex: 8,
                            fit: FlexFit.tight,
                            child: Text(
                              "Distribusi PDRB ADHK",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              const Divider(
                height: 5,
                color: Colors.transparent,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromRGBO(47, 182, 224, 0.9))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CustomPageRoute(
                            child: const LajuPertumbuhanPdrb(),
                            direction: AxisDirection.left));
                  },
                  child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        children: const [
                          Flexible(
                            flex: 8,
                            fit: FlexFit.tight,
                            child: Text(
                              "Laju Pertumbuhan PDRB ADHK",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth * 0.95,
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text(
                          "Catatan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Divider(color: Colors.transparent, height: 5),
                      SizedBox(
                          width: screenWidth * 0.93,
                          child: const Text(
                              "- PDRB ADHB : Produk Domestik Regional Bruto Atas Dasar Harga Berlaku")),
                      SizedBox(
                        width: screenWidth * 0.93,
                        child: const Text(
                            "- PDRB ADHK : Produk Domestik Regional Bruto Atas Dasar Harga Konstan"),
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

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
      : super(
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
        child: child,
      );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
