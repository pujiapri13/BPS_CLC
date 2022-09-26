// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:bps_cilacap/pdrb/distribusi_pdrb.dart';
import 'package:bps_cilacap/pdrb/laju_pertumbuhan_pdrb.dart';
import 'package:bps_cilacap/pdrb/pdrb_ahb_mlu.dart';
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
                              "PDRB AHB Menurut Lapangan Usaha",
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
                              "Distribusi PDRB AHB",
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
                              "Laju Pertumbuhan PDRB",
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
