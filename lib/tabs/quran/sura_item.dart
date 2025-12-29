import 'package:flutter/material.dart';

class SuraItem extends StatelessWidget {
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
          child: Text('1',style: textTheme.titleLarge,),
        ),
        Column(
          crossAxisAlignment: .start, //it is an abbreviation of mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Al-Fatiha', style: textTheme.titleLarge),
            Text('7 Verses', style: textTheme.titleSmall),
          ],
        ),
        Spacer(),
        Text('الفاتحه', style: textTheme.titleLarge),
      ],
    );
  }
}
