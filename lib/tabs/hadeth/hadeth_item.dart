import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/app_theme.dart';
import 'package:islamic_app/tabs/hadeth/hadeth.dart';
import 'package:islamic_app/widgets/loading_indicator.dart';

class HadethItem extends StatefulWidget {
  int index;
  HadethItem({required this.index});

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  Hadeth? hadeth;

  @override
  Widget build(BuildContext context) {
    if (hadeth == null) {
      loadHadeth();
    }
    double screenHeight = MediaQuery.sizeOf(context).height;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12, right: 8, left: 8),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Image.asset(
                  'assets/images/details_header_left.png',
                  height: screenHeight * 0.09,
                  fit: BoxFit.fill,
                  color: AppTheme.black,
                ),
                if (hadeth != null)
                  Expanded(
                    child: Text(
                      textAlign: .center,
                      hadeth!.title,
                      style: textTheme.headlineSmall!.copyWith(
                        color: AppTheme.black,
                      ),
                    ),
                  ),

                Image.asset(
                  'assets/images/details_header_right.png',
                  height: screenHeight * 0.09,
                  fit: BoxFit.fill,
                  color: AppTheme.black,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: .infinity,
              width: .infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/hadeth_card_background.png'),
                ),
              ),
              child: hadeth == null
                  ? LoadingIndicator(color: AppTheme.black)
                  : ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder: (_, index) => Text(
                        hadeth!.content[index],
                        textAlign: .center,
                        style: textTheme.titleMedium!.copyWith(
                          color: AppTheme.black,
                        ),
                      ),
                      separatorBuilder: (_, _) => SizedBox(height: 4),
                      itemCount: hadeth!.content.length,
                    ),
            ),
          ),
          Image.asset(
            'assets/images/details_footer.png',
            color: AppTheme.black,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  Future<void> loadHadeth() async {
    String hadethFileContent = await rootBundle.loadString(
      'assets/text/h${widget.index + 1}.txt',
    );
    List<String> hadethLines = hadethFileContent.split('\n');
    String title = hadethLines[0];
    hadethLines.removeAt(0);
    List<String> content = hadethLines;
    hadeth = Hadeth(title: title, content: content, num: widget.index + 1);
    setState(() {});
  }
}
