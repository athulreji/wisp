import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wisp/home/TrendingSliderCard.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 190,
        padEnds: false,
        aspectRatio: 16/9,
        enableInfiniteScroll: false,
        autoPlayInterval: Duration(seconds: 6),
        autoPlay: true,
        viewportFraction: 0.72,
      ),
      items: [1,2,3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 190,
              decoration: BoxDecoration(color: Color(0xffE6F5FB),borderRadius: BorderRadius.circular(20)),
              child: TrendingSliderCard(),
            );
          },
        );
      }).toList(),
    );
  }
}