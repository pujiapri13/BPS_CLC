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
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenHeight * 0.1),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, ScreenHeight * 0.05, 0, 0),
                width: ScreenWidth * 0.1,
                height: 55,
                child: Image.asset(
                  'assets/images/logo.png',
                  alignment: Alignment.center,
                ),
              ),
              Container(
                  width: ScreenWidth * 0.6,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, ScreenHeight * 0.05, 0, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'PUSDACAP',
                      style: TextStyle(fontSize: 24),
                    ),
                  )),
            ],
          ),
        ),
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
                    SizedBox(
                      width: DrawerWidth,
                      height: DrawerHeight * 0.05,
                    ),
                    Container(
                      width: DrawerWidth * 0.8,
                      height: DrawerHeight * 0.05,
                      color: Colors.white,
                      child: const Text('Menu1'),
                    )
                  ],
                )),
            Container(
                width: DrawerWidth,
                height: DrawerHeight * 0.75,
                margin: EdgeInsets.all(5),
                color: Colors.black,
                //buttton 1
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: DrawerWidth,
                      height: DrawerHeight * 0.05,
                    ),
                    Container(
                      width: DrawerWidth * 0.8,
                      height: DrawerHeight * 0.05,
                      color: Colors.white,
                      child: const Text('Menu2'),
                    )
                  ],
                )),
          ],
        ),
      ),
      //body
      body: Container(
          width: ScreenWidth,
          height: ScreenHeight * 0.8,
          child: Scaffold(
            body: body[currentIndex],
          )),

      bottomNavigationBar: Container(
        height: ScreenHeight * 0.1,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //Button 1
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: currentIndex == 0
                  ? const Icon(
                      BottNavIcons.home,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      BottNavIcons.home,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            // Button 2
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: currentIndex == 1
                  ? const Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            // button 3
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              icon: currentIndex == 2
                  ? const Icon(
                      BottNavIcons.positive_dynamics,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      BottNavIcons.positive_dynamics,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
            // button 4
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: currentIndex == 3
                  ? const Icon(
                      BottNavIcons.user_group,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      BottNavIcons.user_group,
                      color: Colors.white,
                      size: 30,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
