import 'package:flutter/material.dart';

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
      home: const  Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff3D3B46),
      child: SafeArea(
        child: Container(
          color: Color(0xff3D3B46),
          child: Column(children: [
            Expanded(child: Container(
              margin: EdgeInsets.fromLTRB(27, 10, 27, 0),
              child: Column(children: [
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Wisp",
                    style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                        child: Image.network('https://media.licdn.com/dms/image/C5603AQEJaQjvBdgFiw/profile-displayphoto-shrink_800_800/0/1639600085732?e=1691625600&v=beta&t=-Pna8FD32GG8_cWjkKRy3HSa20heS303j0qWPwzH2wM')),
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(5)
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
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 92,
                  padding: EdgeInsets.fromLTRB(24, 31, 24, 31),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Image.asset('assets/graph.png'),
                            SizedBox(width: 18,),
                            Container(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Spotify",
                              style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 3,),
                              Text("mar 10",
                              style: TextStyle(fontSize: 8,color: Colors.white, decoration: TextDecoration.none),
                              )
                            ]),)
                          ]),
                        ),
                        Text("\$231", style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(color: Color(0xff595861),borderRadius: BorderRadius.circular(20)),
                  height: 92,
                  padding: EdgeInsets.fromLTRB(24, 31, 24, 31),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Image.asset('assets/graph.png'),
                            SizedBox(width: 18,),
                            Container(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Spotify",
                              style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 3,),
                              Text("mar 10",
                              style: TextStyle(fontSize: 8,color: Colors.white, decoration: TextDecoration.none),
                              )
                            ]),)
                          ]),
                        ),
                        Text("\$231", style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 92,
                  padding: EdgeInsets.fromLTRB(24, 31, 24, 31),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Image.asset('assets/graph.png'),
                            SizedBox(width: 18,),
                            Container(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Spotify",
                              style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 3,),
                              Text("mar 10",
                              style: TextStyle(fontSize: 8,color: Colors.white, decoration: TextDecoration.none),
                              )
                            ]),)
                          ]),
                        ),
                        Text("\$231", style: TextStyle(fontSize: 15,color: Colors.white, decoration: TextDecoration.none),),
                      ],
                    ),
                  ),
                ),
              ]),
            )),
            Container(
              child: Container(
                margin: EdgeInsets.fromLTRB(34, 20, 34, 46),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset('assets/home.png', color: Colors.white,),
                  Image.asset('assets/graph.png',color: Colors.white),
                  Image.asset('assets/wallet.png'),
                  Image.asset('assets/bookmark.png'),
                ]),
              ),
              height: 100,
            )
          ],),
        ),
      ),
    );
  }
}
