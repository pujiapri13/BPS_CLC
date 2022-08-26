// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api
import 'package:bps_cilacap/bott_nav_icons_icons.dart';
import 'package:flutter/material.dart';
import 'bottomnavbar_content/home_content.dart';
import 'bottomnavbar_content/pdrb_content.dart';
import 'bottomnavbar_content/ipm_content.dart';
import 'bottomnavbar_content/exit_button.dart';
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
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenHeight * 0.1),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: <Widget>[
              // icon
              Container(
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
      ),
      drawer: const Drawer(child: DrawerPage()),
      //body
      body: SizedBox(
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
          children: <Widget>[
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
                      color: Colors.cyan,
                      size: 35,
                    )
                  : const Icon(
                      BottNavIcons.home,
                      color: Colors.white,
                      size: 25,
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
                      Icons.bar_chart_outlined,
                      color: Colors.cyan,
                      size: 35,
                    )
                  : const Icon(
                      Icons.bar_chart_outlined,
                      color: Colors.white,
                      size: 25,
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
                        Icons.stacked_line_chart_outlined,
                        color: Colors.cyan,
                        size: 35,
                      )
                    : const Icon(
                        Icons.stacked_line_chart_outlined,
                        color: Colors.white,
                        size: 25,
                      )),
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
                      color: Colors.cyan,
                      size: 35,
                    )
                  : const Icon(
                      BottNavIcons.user_group,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
