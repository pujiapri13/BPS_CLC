import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    final DrawerHeight = MediaQuery.of(context).size.height;
    final DrawerWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            //loro
            Container(
              height: DrawerHeight * 0.05,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            //telu
            Container(
              height: DrawerHeight * 0.05,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            //papat
            Container(
              height: DrawerHeight * 0.05,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            //lima
            Container(
              height: DrawerHeight * 0.05,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            //enem

            Container(
              height: DrawerHeight * 0.05,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            //pitu
            Container(
              height: DrawerHeight * 0.05,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            //exit

            Container(
              height: DrawerHeight * 0.030,
              margin: EdgeInsets.fromLTRB(10, 120, 10, 0),
              alignment: Alignment.center,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
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
                    child: Text(
                      'Informasi Grafis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
