import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/tabs/quran/most_recently_section.dart';
import 'package:islamic_app/tabs/quran/quran_service.dart';
import 'package:islamic_app/tabs/quran/sura.dart';
import 'package:islamic_app/tabs/quran/sura_details_screen.dart';
import 'package:islamic_app/tabs/quran/sura_item.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            style: textTheme.titleMedium,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppTheme.black.withValues(alpha: 0.7),
              prefixIcon: SvgPicture.asset(
                'assets/icons/quran.svg',
                colorFilter: ColorFilter.mode(
                  AppTheme.primary,
                  BlendMode.srcIn,
                ),
                height: 28,
                width: 28,
                fit: BoxFit.scaleDown,
              ),
              hintText: 'Sura Name',
            ),
            onChanged: (quary) {
              QuranService.searcSura(quary);
              setState(() {});
            },
          ),
        ),
        MostRecentlySection(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Suras List',
            style: textTheme
                .titleMedium, //i make a variable upper just for abbreviation Theme.of(context).textTheme.titleMedium
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (_, index) {
              Sura sura = QuranService.suraSearchResults[index];
              return InkWell(
                onTap: () async {
                  QuranService.addSuraToMostRecently(sura);
                  await Navigator.of(
                    context,
                  ).pushNamed(SuraDetailsScreen.routeName, arguments: sura);
                  setState(() {});
                },
                child: SuraItem(sura),
              );
            },
            itemCount: QuranService.suraSearchResults.length, //or 114
            separatorBuilder: (_, _) => Divider(
              color: AppTheme.white,
              thickness: 1,
              indent: screenWidth * 0.1,
              endIndent: screenWidth * 0.1,
            ),
          ),
        ),
      ],
    );
  }
}
