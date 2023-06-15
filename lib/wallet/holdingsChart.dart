import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HoldingsChart extends StatefulWidget {
  const HoldingsChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 1.3,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex = pieTouchResponse
                          .touchedSection!.touchedSectionIndex;
                    });
                  },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 7,
                centerSpaceRadius: 100,
                sections: showingSections(),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Stocks",
                style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 18, fontFamily: "GoogleSans"),
              ),
              Text(
                "\$234.344",
                style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 30, fontFamily: "GoogleSans"),
              ),
              Text(
                "\$13.42 ↑",
                style: TextStyle(decoration: TextDecoration.none, color: Colors.white, fontSize: 13, fontFamily: "GoogleSans"),
              ),
            ],
          )
        )
      ]),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 33.0 : 23.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xFFd5e9df),
            value: 40,
            title: '40%',
            showTitle: false,
            badgeWidget: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFFd5e9df)),
              child: Image.asset('assets/companies/tesla.png', height: 35, color: Color(0xff3D3B46),)
            ),
            badgePositionPercentageOffset: 1,
            radius: radius,
            titleStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xFFc6cbff),
            value: 30,
            title: '30%',
            radius: radius,
            showTitle: false,
            badgeWidget: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFFc6cbff)),
              child: Image.asset('assets/companies/amazon.png', height: 35, color: Color(0xff3D3B46),)
            ),
            badgePositionPercentageOffset: 1,
            titleStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xFFf9f3d3),
            value: 15,
            title: '15%',
            showTitle: false,
            badgeWidget: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFFf9f3d3)),
              child: Image.asset('assets/companies/amd.png', height: 35, color: Color(0xff3D3B46),)
            ),
            badgePositionPercentageOffset: 1,
            radius: radius,
            titleStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xFFfbdae5),
            value: 15,
            title: '15%',
            showTitle: false,
            badgeWidget: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFFfbdae5)),
              child: Image.asset('assets/companies/microsoft.png', height: 35, color: Color(0xff3D3B46),)
            ),
            badgePositionPercentageOffset: 1,
            radius: radius,
            titleStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}