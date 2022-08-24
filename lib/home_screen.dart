// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api
import 'package:bps_cilacap/bott_nav_icons_icons.dart';
import 'package:flutter/material.dart';
import 'bottomnavbar_content/home_content.dart';
import 'bottomnavbar_content/pdrb_content.dart';
import 'bottomnavbar_content/ipm_content.dart';
import 'bottomnavbar_content/exit_button.dart';

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
  int currentIndex = 0;
  final List<Widget> body = [
    const HomeContent(),
    const PdrbContent(),
    const IpmContent(),
    const ExitButton(),
  ];
//
//
//
//tampilan utama
  @override
  Widget build(BuildContext context) {
    final DrawerHeight = MediaQuery.of(context).size.height;
    final DrawerWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
                width: 222,
                height: 50,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'PUSDACAP',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
          ],
        ),
        backgroundColor: Colors.black,
      ),
//
//
//

//sidebar drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: DrawerWidth,
              height: DrawerHeight * 0.25,
              child: Image.network(
                'https://lh3.googleusercontent.com/p/AF1QipOcBuatGK6FJxRjZQ2gjjzz2ZAHe6uZL7sADewA=s1600-w400',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                width: DrawerWidth,
                height: DrawerHeight * 0.75,
                color: Colors.black,
                //buttton 1
                child: Column(
                  children: <Widget>[
                    Container(
                      width: DrawerWidth,
                      height: DrawerHeight * 0.05,
                    ),
                    Container(
                      width: DrawerWidth * 0.8,
                      height: DrawerHeight * 0.05,
                      color: Colors.white,
                      child: Text('Menu1'),
                    )
                  ],
                )),
          ],
        ),
      ),
      //
      //
      //
      //body
      body: body[currentIndex],
      //
      //
      //
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        iconSize: 40,
        items: const [
          //Home
          BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Colors.lightBlue,
              )),
          //PDRB
          BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(
                Icons.pie_chart,
                color: Colors.white,
              ),
              label: 'PDRB',
              activeIcon: Icon(
                Icons.pie_chart,
                color: Colors.lightBlue,
              )),
          //IPM
          BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(
                Icons.nature_people,
                color: Colors.white,
              ),
              label: 'IPM',
              activeIcon: Icon(
                Icons.nature_people,
                color: Colors.lightBlue,
              )),
          //Exit APP
          BottomNavigationBarItem(
              backgroundColor: Colors.cyan,
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              label: 'BACK',
              activeIcon: Icon(
                Icons.exit_to_app,
                color: Colors.lightBlue,
              )),
        ],
      ),
    );
  }

//state untuk bottom nav bar
  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
