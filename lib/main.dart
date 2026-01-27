import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/home_screen.dart';
import 'package:islamic_app/onboarding/on_board_screen.dart';
import 'package:islamic_app/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islamic_app/tabs/quran/quran_service.dart';
import 'package:islamic_app/tabs/quran/sura_details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();//this is required when i use thing before runapp
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool('onBoarding')??false;
  await QuranService.getMostRecentlySuras();
  runApp(IslamicApp(onboarding: onboarding,));
}

class IslamicApp extends StatelessWidget {
  final bool onboarding;
  IslamicApp({ this.onboarding = false}); 
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraDetailsScreen.routeName:(_)=>SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen(),
        OnBoardScreen.routeName:(_)=>OnBoardScreen(),

      },
      initialRoute: onboarding ? HomeScreen.routeName : OnBoardScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,//here i choose which theme i will use
    );
  }
}