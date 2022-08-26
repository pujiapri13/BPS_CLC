import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  Future<bool> showexitpesan() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('KELUAR APLIKASI'),
              content: const Text('Apakah yakin ingin keluar ?'),
              actions: [
                TextButton(
                  child: const Text('YES'),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
                TextButton(
                  child: const Text('NO'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final DrawerHeight = MediaQuery.of(context).size.height;
    final DrawerWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        showexitpesan();
        return Future.value(false);
      },
      child: Scaffold(
        body: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: <Widget>[
              SizedBox(
                  width: DrawerWidth,
                  height: DrawerHeight * 0.25,
                  child: Image.asset(
                    './assets/images/gedung.jpg',
                    fit: BoxFit.fill,
                  )),
              //siji
              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.map_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Informasi Grafis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              //loro
              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.blinds_closed_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Tabel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),

              //telu
              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.newspaper_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Publikasi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),

              //papat
              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.add_chart_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Berita Resmi Statistik',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),

              //lima
              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.storage_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Senarai Rencana Terbit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              //enem

              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.solar_power_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Konsep & Definisi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              //pitu
              Container(
                height: DrawerHeight * 0.05,
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 60,
                      child: const Text(
                        'Tentang Aplikasi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              //exit

              Container(
                  height: DrawerHeight / 20,
                  margin: EdgeInsets.fromLTRB(
                      10, DrawerHeight * 0.20, DrawerWidth * 0.5, 10),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: const Text(
                        'KELUAR',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      onPressed: () {
                        showexitpesan();
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
