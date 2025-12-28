import 'package:flutter/material.dart';
import 'package:islamic_app/nav_bar_selected_icon.dart';
import 'package:islamic_app/nav_bar_unselected_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
