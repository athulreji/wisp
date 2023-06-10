import 'package:flutter/material.dart';
import 'package:wisp/wallet/profitChart.dart';
import 'package:wisp/wallet/holdingsChart.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 20, 25, 5),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your Wallet", style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "GoogleSans",
                fontSize: 25,
                color: Color(0xffC9B6E9),
              ),),
              SizedBox(width: 3,)
            ],
          ),
          SizedBox(height: 65,),
          HoldingsChart(),
          SizedBox(height: 5,),
          ProfitChart()
        ]),
      )
    );
  }
}