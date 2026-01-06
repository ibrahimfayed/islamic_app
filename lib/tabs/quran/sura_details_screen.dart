import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/tabs/quran/quran_service.dart';
import 'package:islamic_app/tabs/quran/sura.dart';
import 'package:islamic_app/widgets/loading_indicator.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = '/sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  late Sura sura;
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    sura = ModalRoute.of(context)!.settings.arguments as Sura;
    TextTheme textTheme = Theme.of(context).textTheme;
    double screenHeight = MediaQuery.sizeOf(context).height;
    if (ayat.isEmpty) {
      loadSura();
      }
    

    return Scaffold(
      appBar: AppBar(title: Text(sura.englishName)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Image.asset(
                  'assets/images/details_header_left.png',
                  height: screenHeight * 0.1,
                  fit: BoxFit.fill,
                ),
                Text(
                  sura.arabicName,
                  style: textTheme.headlineSmall!.copyWith(
                    color: AppTheme.primary,
                  ),
                ),
                Image.asset(
                  'assets/images/details_header_right.png',
                  height: screenHeight * 0.1,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Expanded(
            child: ayat.isEmpty 
            ? LoadingIndicator()
            : ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (_, index) => Text(
                ayat[index],
                style: textTheme.titleLarge!.copyWith(color: AppTheme.primary),
                textAlign: .center,
              ),
              separatorBuilder: (_, _) => SizedBox(height: 12),
              itemCount: ayat.length,
            ),
          ),
          Image.asset(
            'assets/images/details_footer.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  Future<void> loadSura() async {
    String suraFileContent = await QuranService.loadSuraFile(sura.num);
    ayat = suraFileContent.split('\r\n');
    setState(() {});
  }
}
