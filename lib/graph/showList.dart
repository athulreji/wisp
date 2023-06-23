import 'package:flutter/material.dart';
import 'package:wisp/api/predictions.dart';
import 'package:wisp/graph/detailsPageCard.dart';
import 'package:wisp/graph/priceGraph.dart';
import 'package:wisp/home/listCard.dart';
import 'package:wisp/models/company.dart';

class ShowList extends StatefulWidget {
  List<Company> companies;
  ShowList(this.companies,{super.key});

  @override
  State<ShowList> createState() => _ShowListState();
}

class _ShowListState extends State<ShowList> {
  var _companySelected = false;
  late Company _selectedCompany = widget.companies[0];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: (_companySelected)?
      Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _companySelected = false;
                    });
                  },
                  child: Image.asset('assets/arrow-left.png', width: 30, color: Colors.white,)
                ),
                Text(
                  "${_selectedCompany.name} Stock Details",
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
            DetailsPageCard(_selectedCompany),
            SizedBox(height: 30,),
            StreamBuilder<dynamic>(
            stream: Stream.fromFuture(fetchPredictionsData(_selectedCompany.code)),
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
      )
      :
      Container(
        padding: EdgeInsets.all(27),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Companies",
                      style: TextStyle(fontFamily: "GoogleSans",fontSize: 30,color: Color(0xffC9B6E9), decoration: TextDecoration.none,)
                    ),
              SizedBox(width: 3,)
            ],
          ),
          SizedBox(height: 30,),
            for(int i=0;i<widget.companies.length;i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  _companySelected = true;
                  _selectedCompany = widget.companies[i];
                });
              },
              child: ListCard(widget.companies[i].name, widget.companies[i].code, widget.companies[i].close, widget.companies[i].increase, 'assets/companies/${widget.companies[i].name.toLowerCase()}.png', (i%2==1))),
        ]),
      )
    );
  }
}