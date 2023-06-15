import 'package:flutter/material.dart';
import 'package:wisp/models/company.dart';

class DetailsPageCard extends StatelessWidget {
  final Company company;
  const DetailsPageCard(this.company,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 213,
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Color(0xffE6F5FB),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/companies/${company.name.toLowerCase()}.png', width: 55, color: Colors.black,),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        company.code,
                        style: TextStyle(fontSize: 23,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "${company.name} Inc.",
                        style: TextStyle(fontSize: 13,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "\$${double.parse(company.close.toStringAsFixed(3))}",
                    style: TextStyle(fontSize: 20,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "${(company.increase>0)? "+": "" }${double.parse(company.increase.toStringAsFixed(3))}%",
                    style: TextStyle(fontSize: 15,color: Color(0xff827E9C), decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 35,),
          Image.asset('assets/line.png', width: 294, color: Color(0xff827E9C),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Open",
                    style: TextStyle(fontSize: 15,color: Color(0xff827E9C), decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "\$${double.parse(company.open.toStringAsFixed(3))}",
                    style: TextStyle(fontSize: 14,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "High",
                    style: TextStyle(fontSize: 15,color: Color(0xff827E9C), decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "\$${double.parse(company.high.toStringAsFixed(3))}",
                    style: TextStyle(fontSize: 14,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Low",
                    style: TextStyle(fontSize: 15,color: Color(0xff827E9C), decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "\$${double.parse(company.low.toStringAsFixed(3))}",
                    style: TextStyle(fontSize: 14,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}