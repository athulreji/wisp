import 'package:flutter/material.dart';
import 'package:wisp/home/home.dart';
import 'package:wisp/navbar/navbar.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "GoogleSans",
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff3D3B46),
      child: SafeArea(
        child: Container(
          color: Color(0xff3D3B46),
          child: Column(children: [
            Expanded(child: Home()),
            Navbar()
          ],),
        ),
      ),
    );
  }
}
