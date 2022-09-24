// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/angkatan_kerja.dart';
import 'package:bps_cilacap/ketenagakerjaan/bukan_angkatan_kerja.dart';
import 'package:bps_cilacap/ketenagakerjaan/penduduk_usia_kerja.dart';
import 'package:flutter/material.dart';

class tenagaKerja extends StatefulWidget {
  const tenagaKerja({Key? key}) : super(key: key);

  @override
  State<tenagaKerja> createState() => _tenagaKerjaState();
}

class _tenagaKerjaState extends State<tenagaKerja> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('KETENAGAKERJAAN'),
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
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.transparent,
              ),
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
                          child: const PendudukUsiaKerja(),
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
                            "Penduduk Usia Kerja",
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
                          child: const AngkatanKerja(),
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
                            "Angkatan Kerja",
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
                          child: const BukanAngkatanKerja(),
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
                            "Bukan Angkatan Kerja",
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
