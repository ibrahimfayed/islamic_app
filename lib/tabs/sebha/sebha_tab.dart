import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  String currentPhrase = 'سبحان الله';
  List<String> phrases = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  addOne(){
    setState(() {
      counter++;
      angle = angle + 10;
      int phraseIndex = (counter ~/ 33) % 3;
      currentPhrase = phrases[phraseIndex];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16,),
        Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(fontSize: 36),
            textAlign: .center,
          ),
         SizedBox(height: 16,),
         Image.asset('assets/images/head_of_sebha.png'),
         Stack(
          children: [
            InkWell(
              onTap: () {
                addOne();
              },
              child: Transform.rotate(
                angle: angle,
                child: Image.asset('assets/images/sebha_body.png'))),
            Positioned(
              top: 150,
              left: 130,
              child: Text(
              currentPhrase,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall!.copyWith(fontSize: 36),
              textAlign: .center,
                        ),       

            ),
            Positioned(
              top: 220,
              left: 160,
              child: Text(
              counter.toString(),
              style: Theme.of(
                context,
              ).textTheme.headlineSmall!.copyWith(fontSize: 36),
              textAlign: .center,
                        ),       

            ),
         ] )

      ],
    );
  }
}