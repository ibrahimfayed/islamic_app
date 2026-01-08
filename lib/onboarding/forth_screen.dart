import 'package:flutter/material.dart';
import 'package:islamic_app/onboarding/first_screen_on_boarding_items.dart';
import 'package:islamic_app/onboarding/rest_of_on_boarding_screens_items.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RestOfOnBoardingScreensItems(
      image: 'assets/images/forth_screen_on_boarding_background.png',
      text24: 'Bearish',
      text20: 'Praise the name of your Lord, the Most\nHigh',
    );
    
  }
}
