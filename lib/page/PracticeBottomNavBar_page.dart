import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice_ui/Data/medicine_Data.dart';
import 'package:practice_ui/page/Doctor_Page.dart';
import 'package:practice_ui/page/covid_Page.dart';
import 'package:practice_ui/page/medicine_Page.dart';

import '../Data/Hospital_Data.dart';

class PracticeBottomNavBar extends StatefulWidget {
  const PracticeBottomNavBar({super.key});

  @override
  State<PracticeBottomNavBar> createState() => _PracticeBottomNavBarState();
}

class _PracticeBottomNavBarState extends State<PracticeBottomNavBar> {
  List list = [
    DoctorPage(
      list: allData[0],
    ),
    CovidHomePage(),
    MedicinePage(list: allmedicinedata[0]),
    PracticeBottomNavBar(),
  ];
  List<Icon> allItems = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // selectedItemColor: Colors.blue,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        index: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        items: allItems,
      ),
    );
  }
}
