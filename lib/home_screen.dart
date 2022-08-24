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
          ],
        ),
      ),
      //body
      body: body[currentIndex],

      bottomNavigationBar: Container(
        height: 56.16,
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
                      size: 35,
                    )
                  : const Icon(
                      BottNavIcons.home,
                      color: Colors.white,
                      size: 35,
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
                      size: 35,
                    )
                  : const Icon(
                      Icons.bar_chart,
                      color: Colors.white,
                      size: 35,
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
                      size: 35,
                    )
                  : const Icon(
                      BottNavIcons.user_group,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
