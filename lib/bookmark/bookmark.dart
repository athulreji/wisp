import 'package:flutter/material.dart';
import 'package:wisp/home/listCard.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(27),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Bookmarks",
                      style: TextStyle(fontFamily: "GoogleSans",fontSize: 30,color: Color(0xffC9B6E9), decoration: TextDecoration.none,)
                    ),
              SizedBox(width: 3,)
            ],
          ),
          SizedBox(height: 30,),
          ListCard("Google", "GOOGL", 200, "+1.24", 'assets/companies/google.png', false),
              SizedBox(height: 20,),
              ListCard("Microsoft", "MSFT", 380,"-1.54", 'assets/companies/microsoft.png', true),
        ]),
      )
    );
  }
}