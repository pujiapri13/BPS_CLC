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
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: currentIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: currentIndex == 1
                  ? const Icon(
                      Icons.work_outlined,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.work_outline_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              icon: currentIndex == 2
                  ? const Icon(
                      Icons.widgets_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.widgets_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: currentIndex == 3
                  ? const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],
        ),
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
