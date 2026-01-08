import 'package:flutter/material.dart';
import 'package:islamic_app/onboarding/rest_of_on_boarding_screens_items.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RestOfOnBoardingScreensItems(
      image: 'assets/images/second_screen_on_boarding_background.png',
      text24: 'Welcome To Islami',
      text20: 'We Are Very Excited To Have You In Our Community',
    );
    
  }
}

