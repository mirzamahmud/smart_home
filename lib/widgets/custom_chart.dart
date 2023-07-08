import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:smart_house/context/strings.dart';


class CustomChart extends StatelessWidget {
   CustomChart({super.key});

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,right: 5,left: 5
            ),
            child: LineChart(
              mainData(),
            ),
          ),
          Positioned(left: 5,top: 15,
              child: Text('KwH',style: miniSemiWhiteBold)),
          Positioned(left: 5,bottom: 0,
              child: Text('Day',style: miniSemiWhiteBold)),
        ],
      ),
    );
  }

  //Bottom Text... Week
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 1:
        text =  Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text('Sen', style: miniSemiWhiteLite),
        );
        break;
      case 2:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Tues', style: miniSemiWhiteLite),
        );
        break;
      case 3:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Wed', style: miniSemiWhiteLite),
        );
        break;
      case 4:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Thurs', style: miniSemiWhiteLite),
        );
        break;
      case 5:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Fri', style: miniSemiWhiteLite),
        );
        break;
      case 6:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Sat', style: miniSemiWhiteLite),
        );
        break;
      case 7:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('Sun', style: miniSemiWhiteLite),
        );
        break;
      default:
        text =  Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text('', style: miniSemiWhiteLite),
        );
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  //left text show.....
  Widget leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 1:
        text = ' 0 ';
        break;
      case 2:
        text = ' 50 ';
        break;
      case 3:
        text = ' 100 ';
        break;
      case 4:
        text = ' 150 ';
        break;
      case 5:
        text = ' 250 ';
        break;
      default:
        return Container();
    }

    return Text(text, style: miniSemiWhiteLite, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(

      //line color.....
      gridData: FlGridData(

        horizontalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return  FlLine(
            color: strokeColor,
            strokeWidth: 1,
          );
        },
      ),

      //Bottom and left text show.....
      titlesData: FlTitlesData(
        show: true,
        rightTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles:  AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 30,
          ),
        ),
      ),

      //remove side border...
      borderData: FlBorderData(show: false,),

      //set axis X and Y....
      minX: 0.5,
      maxX: 7.0,
      minY: 0,
      maxY: 6,

      //set data for chart....
      lineBarsData: [
        LineChartBarData(
          spots:  [
            const FlSpot(0.5, 3),
            const FlSpot(1.0, 3.5),
            const FlSpot(2.0, 4.5),
            const FlSpot(3.0, 3.15),
            const FlSpot(4.0, 2.90),
            const FlSpot(5.0, 3.0),
            const FlSpot(6.0, 4.0),
            const FlSpot(6.9, 3.55),

          ],

          //chart decoration.......
          isCurved: true,
          color: semiWhite,
          curveSmoothness: 0.5,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData:  FlDotData(show: true),

        ),
      ],
    );
  }
}