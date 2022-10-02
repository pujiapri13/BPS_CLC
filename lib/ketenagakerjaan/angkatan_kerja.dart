// ignore_for_file: camel_case_types
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_kerja_lpu_kelamin.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_kerja_pendidikan_kelamin.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_kerja_umur_kelamin.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_tkk.dart';
import 'package:bps_cilacap/ketenagakerjaan/menu_angkatan_kerja/ak_tpt.dart';
import 'package:flutter/material.dart';

class AngkatanKerja extends StatefulWidget {
  const AngkatanKerja({Key? key}) : super(key: key);

  @override
  State<AngkatanKerja> createState() => _AngkatanKerjaState();
}

class _AngkatanKerjaState extends State<AngkatanKerja> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ANGKATAN KERJA'),
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
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                        color: Colors.black,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 5,
                            ),
                            child: Text(
                              "Persentase Penduduk yang Bekerja dibagi berdasarkan kategori :",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Container(
                        height: 100,
                        color: Colors.transparent,
                      ),
                    )
                  ],
                )),
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
                          child: const AKKerjaUmurKelamin(),
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
                            "Persentase Penduduk yang Bekerja menurut Kelompok Umur dan Jenis Kelamin",
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
                          child: const AKKerjaPendidikanKelamin(),
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
                            "Persentase Penduduk yang Bekerja menurut Tingkat Pendidikan dan Jenis Kelamin",
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
                          child: const AKKerjaLPUKelamin(),
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
                            "Persentase Penduduk yang Bekerja menurut Lapangan Pekerjaan Utama dan Jenis Kelamin",
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
                          child: const AkTPT(), direction: AxisDirection.left));
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
                            "Tingkat Pengangguran Terbuka menurut Jenis Kelamin",
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
                          child: const AkTKK(),
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
                            "Tingkat Kesempatan Kerja menurut Jenis Kelamin",
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
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
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
