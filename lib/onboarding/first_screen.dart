import 'package:flutter/material.dart';
import 'package:islamic_app/onboarding/first_screen_on_boarding_items.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstScreenOnBoardingItems(
      text: 'Welcome To Islmi App',
      image: 'assets/images/first_screen_on_boarding_background.png',
    );
  }
}




