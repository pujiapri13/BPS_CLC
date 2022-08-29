// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api
import 'package:bps_cilacap/bott_nav_icons_icons.dart';
import 'package:flutter/material.dart';
import 'bottomnavbar_content/home_content.dart';
import 'bottomnavbar_content/pdrb_content.dart';
import 'bottomnavbar_content/ipm_content.dart';
import 'bottomnavbar_content/sensus_content.dart';
import 'package:bps_cilacap/drawer_page.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//function
  void OnTabTapped(int index) {
    setState(() {});
  }

//
//
//
// variabel buat bottom navigation bar
//
//
//
//tampilan utama
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: <Widget>[
              // icon
              SizedBox(
                width: ScreenWidth * 0.2,
                height: ScreenHeight * 0.10,
                child: Image.asset(
                  'assets/images/logo.png',
                  alignment: Alignment.center,
                ),
              ),
              //text
              Container(
                alignment: Alignment.center,
                height: ScreenHeight * 0.10,
                child: const Text(
                  'PUSDACAP',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        drawer: const Drawer(child: DrawerPage()),
        //body
        body: const Scaffold(
          body: HomeContent(),
        ),

        bottomNavigationBar: Container(
          height: ScreenHeight * 0.1,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //Button 1
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    BottNavIcons.home,
                    color: Colors.cyan,
                    size: 35,
                  )),
              // Button 2
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const PdrbContent();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.bar_chart_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              // button 3
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const IpmContent();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.stacked_line_chart_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              // button 4
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Sensus();
                    },
                  ));
                },
                icon: const Icon(
                  BottNavIcons.user_group,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
