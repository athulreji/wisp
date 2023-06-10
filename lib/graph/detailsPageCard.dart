import 'package:flutter/material.dart';

class DetailsPageCard extends StatelessWidget {
  const DetailsPageCard({super.key});

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
                  Image.asset('assets/companies/tesla.png', width: 55, color: Colors.black,),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TSLA",
                        style: TextStyle(fontSize: 23,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                      ),
                      SizedBox(height: 2,),
                      Text(
                        "Tesla Inc.",
                        style: TextStyle(fontSize: 13,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "\$176.273",
                    style: TextStyle(fontSize: 20,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "+1.45%",
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
                    "\$156.273",
                    style: TextStyle(fontSize: 14,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Day High",
                    style: TextStyle(fontSize: 15,color: Color(0xff827E9C), decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "\$156.273",
                    style: TextStyle(fontSize: 14,color: Colors.black, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Day Low",
                    style: TextStyle(fontSize: 15,color: Color(0xff827E9C), decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    "\$156.273",
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