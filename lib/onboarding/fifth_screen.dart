import 'package:flutter/material.dart';
import 'package:islamic_app/onboarding/first_screen_on_boarding_items.dart';
import 'package:islamic_app/onboarding/rest_of_on_boarding_screens_items.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RestOfOnBoardingScreensItems(
      image: 'assets/images/fifth_screen_on_boarding_background.png',
      text24: 'Holy Quran Radio',
      text20: 'You can listen to the Holy Quran Radio through the application for free and easily',
    );
  }
}
