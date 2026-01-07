import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/tabs/hadeth/hadeth_item.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 20),
      child: CarouselSlider.builder(
        itemCount: 50,
        itemBuilder: (_,index,_)=>HadethItem(index: index,),
        options: CarouselOptions(
          height: double.infinity,
          enlargeCenterPage: true,
          enlargeFactor: 0.2
        ),
      ),
    );
  }
}
