// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan/kemiskinan_kabupaten_kota.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan/perkembangan_kemiskinan.dart';
import 'package:bps_cilacap/restAPI/repository_kemiskinan.dart';
import 'package:flutter/material.dart';

class kemiskinanContent extends StatefulWidget {
  const kemiskinanContent({Key? key}) : super(key: key);

  @override
  State<kemiskinanContent> createState() => _kemiskinanContentState();
}

RepositoryKemiskinan repositorykemiskinan = RepositoryKemiskinan();

class _kemiskinanContentState extends State<kemiskinanContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'KEMISKINAN',
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
        ),
        body: FutureBuilder(
          future: repositorykemiskinan.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isikemiskinan = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
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
                                    color: Colors.black,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 5,
                                        ),
                                        child: Text(
                                          "Tahun " +
                                              (isikemiskinan[index = 0]
                                                          .tanggal[0] +
                                                      isikemiskinan[index = 0]
                                                          .tanggal[1] +
                                                      isikemiskinan[index = 0]
                                                          .tanggal[2] +
                                                      isikemiskinan[index = 0]
                                                          .tanggal[3])
                                                  .toString() +
                                              ", penduduk miskin Kabupaten Cilacap tercatat sebanyak " +
                                              isikemiskinan[index = 0]
                                                  .pddk_miskin
                                                  .toString() +
                                              " ribu jiwa atau " +
                                              isikemiskinan[index = 0]
                                                  .p0
                                                  .toString() +
                                              "% dari total penduduk, dengan Garis Kemiskinan sebesar " +
                                              isikemiskinan[index = 0]
                                                  .gk
                                                  .toString() +
                                              " rupiah perkapita perbulan",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
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
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(47, 182, 224, 0.9))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child: const PerkembanganKemiskinan(),
                                      direction: AxisDirection.left));
                            },
                            child: SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.1,
                                child: Row(
                                  children: const [
                                    Flexible(
                                      flex: 10,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "Perkembangan Kemiskinan Kabupaten Cilacap",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
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
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(47, 182, 224, 0.9))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child: const KemiskinanKabupatenKota(),
                                      direction: AxisDirection.left));
                            },
                            child: SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.1,
                                child: Row(
                                  children: const [
                                    Flexible(
                                      flex: 10,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "Kemiskinan Kabupaten/Kota Jawa Tengah",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
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
        ));
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
