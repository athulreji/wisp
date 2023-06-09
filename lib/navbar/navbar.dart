import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(34, 0, 34, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: Color(0xffC9B6E9), shape: BoxShape.circle),
              child: Image.asset('assets/home.png', color: Colors.black,height: 28, width: 28,),
              height: 52,
              width: 52,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration( shape: BoxShape.circle),
            child: Image.asset('assets/graph.png',height: 28, width: 28,),
            height: 52,
            width: 52,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration( shape: BoxShape.circle),
            child: Image.asset('assets/wallet.png',height: 28, width: 28,),
            height: 52,
            width: 52,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration( shape: BoxShape.circle),
            child: Image.asset('assets/bookmark.png',height: 28, width: 28,),
            height: 52,
            width: 52,
          ),
        ]),
      ),
      height: 88,
    );
  }
}