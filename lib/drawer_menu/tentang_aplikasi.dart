import 'package:bps_cilacap/Icons/about_icons_icons.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({Key? key}) : super(key: key);

  @override
  State<TentangAplikasi> createState() => _TentangAplikasiState();
}

//<<<<< target url hyperlink
final Uri _url1 = Uri.parse('https://cilacapkab.bps.go.id/');
final Uri _url2 = Uri.parse('https://github.com/pujiapri13/BPS_CLC');

//>>>>>
class _TentangAplikasiState extends State<TentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    //<<<<< ukuran layar
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    //>>>>>
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
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
      body: Center(
        child: Container(
          color: Colors.black87,
          width: screenWidth,
          height: screenHeight,
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                width: 200,
                height: 200,
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'ASAP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                      color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const Text(
                  '<-Aplikasi Statistik Cilacap->',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.only(top: 30),
              //   width: screenWidth * 0.39,
              //   child: Row(
              //     children: <Widget>[
              //       const Flexible(
              //         fit: FlexFit.loose,
              //         flex: 3,
              //         child: Text(
              //           'Made with',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 18,
              //           ),
              //         ),
              //       ),
              //       const Flexible(
              //         fit: FlexFit.tight,
              //         flex: 1,
              //         child: Icon(
              //           Icons.favorite,
              //           size: 22,
              //           color: Colors.white,
              //         ),
              //       ),
              //       Flexible(
              //         fit: FlexFit.tight,
              //         flex: 1,
              //         child: Container(
              //           alignment: Alignment.centerLeft,
              //           child: const Text(
              //             'in',
              //             style: TextStyle(
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 18,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: const EdgeInsets.only(bottom: 30),
              //   child: const Text(
              //     'MAJENANG',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontWeight: FontWeight.w800,
              //       fontSize: 30,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: screenHeight * 0.15,
                width: screenWidth * 0.6,
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.05,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: screenWidth * 0.1,
                            height: screenHeight * 0.05,
                            alignment: Alignment.centerRight,
                            child: const Icon(
                              AboutIcons.github_icon,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.5,
                            height: screenHeight * 0.05,
                            alignment: Alignment.centerLeft,
                            child: const TextButton(
                              onPressed: _launchUrlGithub,
                              child: Text(
                                'Work with Us',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: screenWidth * 0.1,
                            height: screenHeight * 0.05,
                            alignment: Alignment.centerRight,
                            child: const Icon(
                              AboutIcons.browser_icon,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.5,
                            height: screenHeight * 0.05,
                            alignment: Alignment.centerLeft,
                            child: const TextButton(
                              onPressed: _launchUrlBPS,
                              child: Text(
                                'cilacapkab.bps.go.id',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                      width: screenWidth,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: screenWidth * 0.1,
                            height: screenHeight * 0.05,
                            alignment: Alignment.centerRight,
                            child: const Icon(
                              AboutIcons.cube_outline,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.5,
                            height: screenHeight * 0.05,
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              '  Version 0.1.0',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: const Text(
                  'Our Team :',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: screenHeight * 0.25,
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "     Isnaini, S.ST, M.M",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "           BPS Cilacap",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "     Achmad Rifai, S.ST",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "         BPS Cilacap",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "     Imam Fahrudin",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "                UI/UX Designer",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "     Amarulloh M.K",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "                Backend Develop",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                        width: screenWidth,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "     Puji Apriyanto",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "                  Frontend Develop",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
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

//<<<<< proses url github/pujiapri13/BPS_CLC
Future<void> _launchUrlGithub() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}
//>>>>>

//<<<<< proses url cilacapkab.bps.go.id
Future<void> _launchUrlBPS() async {
  if (!await launchUrl(_url1)) {
    throw 'Could not launch $_url1';
  }
}
//>>>>>