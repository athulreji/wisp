import 'package:flutter/material.dart';
import 'package:wisp/home/listCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(27, 10, 27, 0),
        child: Column(children: [
          Container(
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
            height: 242,
            decoration: BoxDecoration(color: Color(0xffE6F5FB),borderRadius: BorderRadius.circular(35)),
          ),
          SizedBox(height: 30,),
          ListCard("Google", 200, 'assets/graph.png', false),
          SizedBox(height: 20,),
          ListCard("Microsoft", 380, 'assets/graph.png', true),
          SizedBox(height: 20,),
          ListCard("Apple", 500, 'assets/graph.png', false)
        ]),
      ),
    );
  }
}