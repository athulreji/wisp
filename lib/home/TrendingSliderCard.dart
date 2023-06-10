import 'package:flutter/material.dart';

class TrendingSliderCard extends StatelessWidget {
  const TrendingSliderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TSLA Inc", style: TextStyle(color: Color(0xff3D3B46),fontSize: 22,fontFamily: "GoogleSans", decoration: TextDecoration.none )),
              SizedBox(height: 10),
              Text("\$1543.67",style: TextStyle(color: Color(0xff3D3B46),fontSize: 15,fontFamily: "GoogleSans", decoration: TextDecoration.none )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/graph.png', width: 34,color: Color(0xff3D3B46),),
            ],
          )
        ],
      ),
    );
  }
}