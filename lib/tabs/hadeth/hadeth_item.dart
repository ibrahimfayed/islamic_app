import 'package:flutter/material.dart';
import 'package:islamic_app/app_theme.dart';

class HadethItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  height: screenHeight * 0.1,
                  fit: BoxFit.fill,
                  color: AppTheme.black,
                ),
                Text(
                  'data',
                  style: textTheme.headlineSmall!.copyWith(
                    color: AppTheme.black,
                  ),
                ),
                Image.asset(
                  'assets/images/details_header_right.png',
                  height: screenHeight * 0.1,
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
              child: ListView.separated(
                itemBuilder: (_, index) => Text(
                  'data',
                  textAlign: .center,
                  style: textTheme.titleMedium!.copyWith(color: AppTheme.black),
                ),
                separatorBuilder: (_, _) => SizedBox(height: 4),
                itemCount: 50,
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
}
