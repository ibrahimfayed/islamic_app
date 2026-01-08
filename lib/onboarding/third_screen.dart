import 'package:flutter/material.dart';
import 'package:islamic_app/onboarding/first_screen_on_boarding_items.dart';
import 'package:islamic_app/onboarding/rest_of_on_boarding_screens_items.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RestOfOnBoardingScreensItems(
      image: 'assets/images/third_screen_on_boarding_background.png',
      text24: 'Reading the Quran',
      text20: 'Read, and your Lord is the Most Generous',
    );
  }
}
