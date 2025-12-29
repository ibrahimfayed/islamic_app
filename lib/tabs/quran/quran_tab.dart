import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/tabs/quran/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text(
            'Suras List',
            style: Theme.of(context).textTheme.titleMedium,//i make a variable upper just for abbreviation Theme.of(context).textTheme.titleMedium
            ),
        ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (_,index) => SuraItem(),
              itemCount: 114,
              separatorBuilder: (_,_) => Divider(
                color: AppTheme.white,
                thickness: 1,
                indent: screenWidth * 0.1,
                endIndent: screenWidth * 0.1,
              ),
              ),
              )
      ],
    );
  }
}