import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';

class RestOfOnBoardingScreensItems extends StatelessWidget {

String text20;
String text24;
String image;

RestOfOnBoardingScreensItems({required this.image,required this.text24,required this.text20});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: .center,
              child: Image.asset(
                  'assets/images/home_header.png',
                  height: MediaQuery.sizeOf(context).height*0.15,
                  fit: BoxFit.fitWidth,
                  ),
            ),
            Spacer(flex: 2,),
            Image.asset(
                image,
                fit: BoxFit.fill,
                ),
            Spacer(flex: 2,),
            Text(
              text24,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: AppTheme.primary,
                  ),
                  textAlign: .center,
            ), 
            Spacer(flex: 1,),
            Text(
              text20,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppTheme.primary,
                  ),
                  textAlign: .center,
            ),
            Spacer(flex: 1,),  
          ],
        ),
      ),
    );
  }
}