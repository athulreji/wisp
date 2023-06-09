import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String name;
  final int price;
  final String image;
  final bool bg;
  const ListCard(this.name, this.price, this.image, this.bg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bg ? BoxDecoration(color: Color(0xff595861),borderRadius: BorderRadius.circular(20)):BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 92,
      padding: EdgeInsets.fromLTRB(24, 30, 24, 30),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.asset(image),
                SizedBox(width: 18,),
                Container(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(name,
                  style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  ),
                  SizedBox(height: 3,),
                  Text("mar 10",
                  style: TextStyle(fontSize: 8,color: Colors.white, decoration: TextDecoration.none, fontFamily: "GoogleSans"),
                  )
                ]),)
              ]),
            ),
            Text("\$$price".toString(), style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none, fontFamily: "GoogleSans"),),
          ],
        ),
      ),
    );
  }
}