import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/tabs/hadeth/hadeth.dart';
import 'package:islamic_app/tabs/quran/quran_service.dart';
import 'package:islamic_app/widgets/loading_indicator.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = '/Hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  late Hadeth hadeth;

  @override
  Widget build(BuildContext context) {
    hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    TextTheme textTheme = Theme.of(context).textTheme;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(title: Text("Hadeth ${hadeth.num}")),
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
                Expanded(
                  child: Text(
                    hadeth.title,
                    textAlign: .center,
                    style: textTheme.headlineSmall!.copyWith(
                      color: AppTheme.primary,
                    ),
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
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (_, index) => Text(
                hadeth.content[index],
                style: textTheme.titleLarge!.copyWith(color: AppTheme.primary),
                textAlign: .center,
              ),
              separatorBuilder: (_, _) => SizedBox(height: 12),
              itemCount: hadeth.content.length,
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
  }


