import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/quran/most_recently_item.dart';
import 'package:islamic_app/tabs/quran/quran_service.dart';

class MostRecentlySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: QuranService.mostRecentlySuras.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Most Recently', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 10),
            SizedBox(
              //هنا أنا حواطت الليست فيو بسايذد بوكس عشان أنا عاوز يبقي ليه طول ثابت ميأخدش باقي المساحة اللي في الشاشة  لانه أصلامش هيسكرول بالطول فمش مهم بالنسبالي طوله يبقي كبير
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: ListView.separated(
                scrollDirection: .horizontal,
                itemBuilder: (_, index) =>
                    MostRecentlyItem(QuranService.mostRecentlySuras.reversed.toList()[index]),
                separatorBuilder: (_, _) => SizedBox(width: 10),
                itemCount: QuranService.mostRecentlySuras.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
