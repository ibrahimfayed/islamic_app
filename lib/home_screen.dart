import 'package:flutter/material.dart';
import 'package:islamic_app/nav_bar_selected_icon.dart';
import 'package:islamic_app/nav_bar_unselected_icon.dart';
import 'package:islamic_app/tabs/hadeth/hadeth_tab.dart';
import 'package:islamic_app/tabs/quran/quran_tab.dart';
import 'package:islamic_app/tabs/radio/radio_tab.dart';
import 'package:islamic_app/tabs/sebha/sebha_tab.dart';
import 'package:islamic_app/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex = 0;
List<Widget> tabs = [
  QuranTab(),
  HadethTab(),
  SebhaTab(),
  RadioTab(),
  TimeTab()
  
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {
            
          });
        },
        items: [//مينفعش يكون فيها أأقل من اتنين و ده طبيعي
          BottomNavigationBarItem(
            icon: NavBarUnselectedIcon(imageName: 'quran'),
            activeIcon: NavBarSelectedIcon(imageName: 'quran'),
            label: 'Quran'
          ),
           BottomNavigationBarItem(
            icon: NavBarUnselectedIcon(imageName: 'hadeth'),
            activeIcon: NavBarSelectedIcon(imageName: 'hadeth'),
            label: 'Hadeth'
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselectedIcon(imageName: 'sebha'),
            activeIcon: NavBarSelectedIcon(imageName: 'sebha'),
            label: 'Sebha'
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselectedIcon(imageName: 'radio'),
            activeIcon: NavBarSelectedIcon(imageName: 'radio'),
            label: 'Radio'
          ),
          BottomNavigationBarItem(
            icon: NavBarUnselectedIcon(imageName: 'time'),
            activeIcon: NavBarSelectedIcon(imageName: 'time'),
            label: 'Time'
          ),

        ],
      ),
    );
  }
}
