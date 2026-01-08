import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';

class FirstScreenOnBoardingItems extends StatelessWidget {

String text;
String image;

FirstScreenOnBoardingItems({required this.image,required this.text});
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
              text,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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