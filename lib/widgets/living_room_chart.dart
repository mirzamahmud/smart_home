import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_house/context/strings.dart';

class LivingRoomChart extends StatelessWidget {
   LivingRoomChart({super.key});
  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: LineChart(
              mainData(),
            ),
          ),
          Positioned(top: 0,
              child: Text('KwH',style: miniSemiWhiteBold)),
          Positioned(bottom: 0,
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
        text =  Text('1pm', style: miniSemiWhiteLite);
        break;
      case 2:
        text =  Text('2pm', style: miniSemiWhiteLite);
        break;
      case 3:
        text =  Text('3pm', style: miniSemiWhiteLite);
        break;
      case 4:
        text =  Text('4pm', style: miniSemiWhiteLite);
        break;
      case 5:
        text =  Text('5pm', style: miniSemiWhiteLite);
        break;
      case 6:
        text =  Text('6pm', style: miniSemiWhiteLite);
        break;
      case 7:
        text =  Text('7pm', style: miniSemiWhiteLite);
        break;
      default:
        text =  Text('', style: miniSemiWhiteLite);
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
        text = ' 50 ';
        break;
      case 2:
        text = ' 100 ';
        break;
      case 3:
        text = ' 150 ';
        break;
      case 4:
        text = '  ';
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
            reservedSize: 20,
          ),
        ),
      ),

      //remove side border...
      borderData: FlBorderData(show: false,),

      //set axis X and Y....
      minX: 0.5,
      maxX: 7.0,
      minY: 0,
      maxY: 4,

      //set data for chart....
      lineBarsData: [
        LineChartBarData(
          spots:  [
            const FlSpot(1.0, 1.9),
            const FlSpot(2.0, 2.9),
            const FlSpot(3.0, 1.5),
            const FlSpot(4.0, 1.2),
            const FlSpot(5.0, 1.2),
            const FlSpot(6.0, 2.4),
            const FlSpot(7.0, 1.8),

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