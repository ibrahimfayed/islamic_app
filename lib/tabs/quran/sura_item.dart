import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/quran/sura.dart';

class SuraItem extends StatelessWidget {
  Sura sura;

  SuraItem(this.sura);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Container(
          height: 52,
          width: 52,
          margin: EdgeInsets.only(right: 24),
          alignment: .center,//it controls the alignment of child of the area given to the container
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/sura_number_frame.png'
                ),
            ),
          ),
          child: Text('${sura.num}',style: textTheme.titleLarge,),
        ),
        Column(
          crossAxisAlignment: .start, //it is an abbreviation of mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(sura.englishName, style: textTheme.titleLarge),
            Text('${sura.ayatCount} Verses', style: textTheme.titleSmall),
          ],
        ),
        Spacer(),
        Text(sura.arabicName, style: textTheme.titleLarge),
      ],
    );
  }
}
