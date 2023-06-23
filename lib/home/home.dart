import 'package:flutter/material.dart';
import 'package:wisp/home/listCard.dart';
import 'package:wisp/home/trendingSlider.dart';
import 'package:wisp/models/company.dart';

class Home extends StatefulWidget {
  final List<Company> companies;
  const Home(this.companies, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(27, 10, 27, 0),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Wisp",
              style: TextStyle(fontFamily: "GoogleSans",fontSize: 15,color: Colors.white, decoration: TextDecoration.none,)),
              Container(
                padding: EdgeInsets.all(3),
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipRRect(borderRadius: BorderRadius.circular(18),child: Image.network('https://media.licdn.com/dms/image/C5603AQEJaQjvBdgFiw/profile-displayphoto-shrink_800_800/0/1639600085732?e=1691625600&v=beta&t=-Pna8FD32GG8_cWjkKRy3HSa20heS303j0qWPwzH2wM'))),
                decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width: 2, color: Colors.white),
                )
              )
            ],),
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending",
                  style: TextStyle(fontFamily: "GoogleSans",fontSize: 25,color: Color(0xffC9B6E9), decoration: TextDecoration.none,)
                ),
                SizedBox(width: 3,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          TrendingSlider(widget.companies.sublist(0,3)),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.fromLTRB(27, 10, 27, 0),
            child: Column(children: [
              for(int i=0;i<3;i++) 
                Column(children: [
                  ListCard(widget.companies[i].name, widget.companies[i].code, widget.companies[i].close, widget.companies[i].increase, 'assets/companies/'+widget.companies[i].name.toLowerCase()+'.png', (i%2)!=0),
                  SizedBox(height: 20,),
                ],)
            ]),
          ),
        ]),
      ),
    );
  }
}