import 'package:flutter/material.dart';
import 'package:wisp/wallet/lineChart.dart';
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
        child: Column(children: [
          const HoldingsChart(),
          BarChartSample2()
        ]),
      )
    );
  }
}