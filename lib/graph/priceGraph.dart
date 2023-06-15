import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:wisp/models/prediction.dart';

class PriceGraph extends StatefulWidget {
  final Prediction data;
  const PriceGraph(this.data, {super.key});

  @override
  State<PriceGraph> createState() => _PriceGraphState();
}

class _PriceGraphState extends State<PriceGraph> {
  List<Color> gradientColors = [
    Color(0xFFE6F5FB),
    Color(0xFFE6F5FB),
  ];

  String graphTimeline = "5D";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        decoration: BoxDecoration(
          border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(35)
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(35, 0, 25, 0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if(graphTimeline!="5D")
                      setState(() {
                        graphTimeline="5D";
                      });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (graphTimeline=="5D")?Color(0xFFE6F5FB):Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(15),
                    child: Text("5D", style: TextStyle(color: (graphTimeline=="5D")?Colors.black:Color(0xFFE6F5FB),fontFamily: 'GoogleSans', fontSize: 15, decoration: TextDecoration.none),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if(graphTimeline!="1M")
                      setState(() {
                        graphTimeline="1M";
                      });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (graphTimeline=="1M")?Color(0xFFE6F5FB):Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(15),
                    child: Text("1M", style: TextStyle(color: (graphTimeline=="1M")?Colors.black:Color(0xFFE6F5FB),fontFamily: 'GoogleSans', fontSize: 15, decoration: TextDecoration.none),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if(graphTimeline!="1Y")
                      setState(() {
                        graphTimeline="1Y";
                      });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (graphTimeline=="1Y")?Color(0xFFE6F5FB):Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(15),
                    child: Text("1Y ", style: TextStyle(color: (graphTimeline=="1Y")?Colors.black:Color(0xFFE6F5FB),fontFamily: 'GoogleSans', fontSize: 15, decoration: TextDecoration.none),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if(graphTimeline!="Predictions")
                      setState(() {
                        graphTimeline="Predictions";
                      });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: (graphTimeline=="Predictions")?Color(0xFFE6F5FB):Colors.black,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(15),
                    child: Text("Prediction", style: TextStyle(color: (graphTimeline=="Predictions")?Colors.black:Color(0xFFE6F5FB),fontFamily: 'GoogleSans', fontSize: 15, decoration: TextDecoration.none),),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 30,),
          AspectRatio(
            aspectRatio: 1.3,
            child: LineChart(
              (graphTimeline=="5D")
              ? mainData(5)
              : (graphTimeline=="1M")
                ? mainData(30)
                : (graphTimeline=="1Y")
                  ? mainData(365)
                  : predictData()
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Day 1', style: style);
        break;
      case 1:
        text = const Text('Day 2', style: style);
        break;
      case 2:
        text = const Text('Day 3', style: style);
        break;
      case 3:
        text = const Text('Day 4', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Day 1', style: style);
        break;
      case 2:
        text = const Text('Day 2', style: style);
        break;
      case 3:
        text = const Text('Day 3', style: style);
        break;
      case 4:
        text = const Text('Day 4', style: style);
        break;
      case 5:
        text = const Text('Day 4', style: style);
        break;
      default:
        text=Text("");
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  LineChartData mainData(int days) {
    final dataLen = widget.data.data.length;
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine:false,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.white10,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.white10,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 50,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 40,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      lineBarsData: [
        LineChartBarData(
          spots:  [
            for(int i=0;i<(days);i++)
              FlSpot(double.parse(i.toString()), double.parse(widget.data.data[dataLen-days+i-1].toString())),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
  LineChartData predictData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipRoundedRadius: 10,
          
        )
      ),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine:false,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.white10,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.white10,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 50,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 40,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      lineBarsData: [
        LineChartBarData(
          spots:  [
            for(int i=0;i<(10);i++)
              FlSpot(double.parse(i.toString()), double.parse(widget.data.predictions[i].toString())),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}