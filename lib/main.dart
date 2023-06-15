import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wisp/api/companies.dart';
import 'package:wisp/api/predictions.dart';
import 'package:wisp/bookmark/bookmark.dart';
import 'package:wisp/graph/graph.dart';
import 'package:wisp/home/home.dart';
import 'package:wisp/services/companies.dart';
import 'package:wisp/wallet/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wisp',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff3D3B46),
        fontFamily: "GoogleSans",
        useMaterial3: true,
      ),
      home: const  Navigator(),
    );
  }
}


class Navigator extends StatefulWidget {
  const Navigator({super.key});

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {
  Widget selectScreen(i, data) {
    if(i==0)
      return Home(data);
    else if(i==1)
      return Graph(data);
    else if(i==2)
      return Wallet();
    else if(i==3)
      return Bookmark();
    else 
      return Text("");
  }
  int _activeIndex = 0;
  final navbarAssets = ['assets/home.png', 'assets/graph.png', 'assets/wallet.png', 'assets/bookmark.png'];

  void _changeIndex(x) {
    setState(() {
      _activeIndex = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff3D3B46),
      child: SafeArea(
        child: Container(
          color: Color(0xff3D3B46),
          child: Column(children: [
            Expanded(
              child: StreamBuilder<List<dynamic>>(
              stream: Stream.fromFuture(fetchCompaniesData()),
              builder: (context, snapshot) {
                if (snapshot.hasData == false) {
                  return Center(child: CircularProgressIndicator());
                }
                else{
                  return selectScreen(_activeIndex, snapshot.data);
                }
              }),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.fromLTRB(34, 0, 34, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for(int i=0;i<4;i++)
                    GestureDetector(
                      onTap: () {
                        if(_activeIndex!=i) {
                          _changeIndex(i);
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: (_activeIndex == i)
                        ? BoxDecoration(color: Color(0xffC9B6E9), shape: BoxShape.circle) : 
                        BoxDecoration(shape: BoxShape.circle) ,
                        child: Image.asset(navbarAssets[i], color: (_activeIndex == i)?Colors.black:Colors.white,height: 28, width: 28,),
                        height: 52,
                        width: 52,
                      ),
                    ),
                ]),
              ),
              height: 88,
            )
          ],),
        ),
      ),
    );
  }
}
