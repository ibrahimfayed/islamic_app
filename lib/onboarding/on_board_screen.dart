import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/home_screen.dart';
import 'package:islamic_app/onboarding/custom_indicator.dart';
import 'package:islamic_app/onboarding/fifth_screen.dart';
import 'package:islamic_app/onboarding/first_screen.dart';
import 'package:islamic_app/onboarding/forth_screen.dart';
import 'package:islamic_app/onboarding/second_screen.dart';
import 'package:islamic_app/onboarding/third_screen.dart';

class OnBoardScreen extends StatefulWidget {
  static const String routeName = '/onboard';

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: _controller,
              children: [
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),
                ForthScreen(),
                FifthScreen(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                      _controller.animateToPage(
                        index -1,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.linear,
                      );
                    
                  },
                  child: getLeftWidget(),
                ),
                
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    CustomIndicator(active: index == 0),
                    SizedBox(width: 5),
                    CustomIndicator(active: index == 1),
                    SizedBox(width: 5),
                    CustomIndicator(active: index == 2),
                    SizedBox(width: 5),
                    CustomIndicator(active: index == 3),
                    SizedBox(width: 5),
                    CustomIndicator(active: index == 4),
                  ],
                ),
                InkWell(
                  onTap: () {
                    if (index == 4) {
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    } else {
                      _controller.animateToPage(
                        index + 1,
                        duration: Duration(milliseconds: 250),
                        curve: Curves.linear,
                      );
                    }
                  },
                  child: getRightWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getLeftWidget() {
    if (index == 0) {
      return Text('    ');
    } else {
      return Text(
        'Back',
        style: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(color: AppTheme.primary),
        textAlign: .center,
      );
    }
  }

  Widget getRightWidget() {
    if (index == 4) {
      return Text(
        'Finish',
        style: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(color: AppTheme.primary),
        textAlign: .center,
      );
    } else {
      return Text(
        'Next',
        style: Theme.of(
          context,
        ).textTheme.titleMedium!.copyWith(color: AppTheme.primary),
        textAlign: .center,
      );
    }
  }
}
