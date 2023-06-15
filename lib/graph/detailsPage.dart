import 'package:flutter/material.dart';
import 'package:wisp/api/predictions.dart';
import 'package:wisp/graph/detailsPageCard.dart';
import 'package:wisp/graph/priceGraph.dart';
import 'package:wisp/models/company.dart';

class DetailsPage extends StatefulWidget {
  final Company company;
  const DetailsPage(this.company, {super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/arrow-left.png', width: 30, color: Colors.white,),
              Text(
                "Tesla Stock Details",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "GoogleSans"
                ),
              ),
              SizedBox(width: 3,)
            ],
          ),
          SizedBox(height: 30,),
          DetailsPageCard(widget.company),
          SizedBox(height: 30,),
          StreamBuilder<dynamic>(
          stream: Stream.fromFuture(fetchPredictionsData(widget.company.code)),
          builder: (context, snapshot) {
            if (snapshot.hasData == false) {
              return Center(child: CircularProgressIndicator(color: Color(0xFFE6F5FB),));
            }
            else{
              return PriceGraph(snapshot.data);
            }
          }),
        ],
      ),
    );
  }
}