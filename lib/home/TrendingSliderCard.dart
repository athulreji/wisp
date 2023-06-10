import 'package:flutter/material.dart';

class TrendingSliderCard extends StatelessWidget {
  final String name;
  final String code;
  final String logoImg;
  final String price;
  final String increase;

  const TrendingSliderCard(this.name, this.code, this.logoImg, this.price, this.increase, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("TSLA", style: TextStyle(color: Color(0xff3D3B46),fontSize: 20,fontFamily: "GoogleSans", decoration: TextDecoration.none )),
                  SizedBox(width: 5,),
                  Text("Inc", style: TextStyle(color: Color(0xff3D3B46),fontSize: 15,fontFamily: "GoogleSans", decoration: TextDecoration.none )),
                ],
              ),
              Image.asset(logoImg, width: 32,color: Color(0xff3D3B46),),
            ],
          ),
          SizedBox(height: 13),
          Text("\$$price",style: TextStyle(color: Color(0xff3D3B46),fontSize: 20,fontFamily: "GoogleSans", decoration: TextDecoration.none )),
          SizedBox(height: 7,),
          Text(increase+"%",style: TextStyle(color: Color(0xff827E9C),fontSize: 15,fontFamily: "GoogleSans", decoration: TextDecoration.none )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1,),
              Container(
                height: 35,
                decoration: BoxDecoration(color: Color(0xff3D3B46), borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(7),
                child: Image.asset("assets/bookmark.png"),  
              ),
            ],
          )
        ],
      ),
    );
  }
}