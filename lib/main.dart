import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/home_screen.dart';
import 'package:islamic_app/onboarding/on_board_screen.dart';
import 'package:islamic_app/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islamic_app/tabs/quran/quran_service.dart';
import 'package:islamic_app/tabs/quran/sura_details_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();//this is required when i use thing before runapp
  await QuranService.getMostRecentlySuras();
  runApp(IslamicApp());
}

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

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
      initialRoute: HomeScreen.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,//here i choose which theme i will use
    );
  }
}