// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api

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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nama Aplikasi',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.cyan,
        actions: const [
          Image(
            image: AssetImage(
              'assets/images/logo.png',
            ),
            height: 50,
            width: 50,
          )
        ],
      ),
//
//
//
//sidebar drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('BPS Cilacap'),
              accountEmail: Text('https://cilacapkab.bps.go.id'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/p/AF1QipOcBuatGK6FJxRjZQ2gjjzz2ZAHe6uZL7sADewA=s1600-w400"),
                      fit: BoxFit.fill)),
            ),
            //Divider = Garis Batas
            //Menu Drawer1
            const ListTile(
              title: Text("Menu1"),
              trailing: Icon(Icons.adb),
            ),
            const Divider(),
            //Menu Drawer2
            const ListTile(
              title: Text("Menu2"),
            ),
            const Divider(),
            ListTile(
              title: const Text("Cancel"),
              trailing: const Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),
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
