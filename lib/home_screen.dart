// ignore_for_file: non_constant_identifier_names, library_private_types_in_public_api
import 'package:bps_cilacap/Icons/bott_nav_icon_icons.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
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
  int currentPage = 0;
  final List<Widget> _pages = [
    const HomeContent(),
    const PdrbContent(),
    const IpmContent(),
    const Sensus(),
  ];
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
    //nav
    final ScreenHeight = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }
//
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
                width: 50,
                height: 41.45,
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
                  'ASAP',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        drawer: const Drawer(child: DrawerPage()),
        body: _pages[currentPage],
        bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: currentPage,
          barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
          arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
          itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
          itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
          circleOutline: 15.0,
          shadowAllowance: 0.0,
          circleSize: 50.0,
          blurShadowRadius: 50.0,
          barBackgroundColor: Colors.black,
          circleColor: Colors.black,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.grey,
          textColor: Colors.grey,
          tabs: getTabsData(),
          onTabChangedListener: (index) => setState(() => currentPage = index),
        ),
      ),
    );
  }
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: BottNavIcon.home_bottnav_icon_2,
      iconSize: 25.0,
      title: 'HOME',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: BottNavIcon.pdrb_bottnav_icon,
      iconSize: 25,
      title: 'PDRB',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: BottNavIcon.ipm_bottnav_icon,
      iconSize: 25,
      title: 'IPM',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: BottNavIcon.sensus_bottnav_icon,
      iconSize: 25,
      title: 'SENSUS',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ];
}
