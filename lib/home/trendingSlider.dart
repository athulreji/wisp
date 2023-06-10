import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wisp/home/TrendingSliderCard.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 183,
        aspectRatio: 16/9,
        enableInfiniteScroll: false,
        autoPlayInterval: Duration(seconds: 5),
        autoPlay: true,
        viewportFraction: 0.8,
      ),
      items: [1,2,3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 183,
              decoration: BoxDecoration(color: Color(0xffE6F5FB),borderRadius: BorderRadius.circular(20)),
              child: TrendingSliderCard("Tesla", "TSLA", "assets/companies/tesla.png", "432.435", "+14.24"),
            );
          },
        );
      }).toList(),
    );
  }
}