import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wisp/home/TrendingSliderCard.dart';
import 'package:wisp/models/company.dart';

class TrendingSlider extends StatelessWidget {
  final List<Company> companies;
  const TrendingSlider(this.companies, {super.key});

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
      items: companies.map((company) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 183,
              decoration: BoxDecoration(color: Color(0xffE6F5FB),borderRadius: BorderRadius.circular(20)),
              child: TrendingSliderCard(company.name, company.code, "assets/companies/${company.name.toString().toLowerCase()}.png", double.parse(company.close.toStringAsFixed(2)), double.parse(company.increase.toStringAsFixed(2))),
            );
          },
        );
      }).toList(),
    );
  }
}