import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      isShowingMainData ? sampleData2 : sampleData2,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: null,
        maxX: 6,
        maxY: 10,
        minY: null,
      );
  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          // sideTitles: leftTitles(),
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_1,
        lineChartBarData2_2,
        lineChartBarData2_3,
      ];

  SideTitles leftTitles() => SideTitles(
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff72719b),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Jan', style: style);
        break;
      case 2:
        text = const Text('Feb', style: style);
        break;
      case 3:
        text = const Text('Mar', style: style);
        break;
      case 4:
        text = const Text('Apr', style: style);
        break;
      case 5:
        text = const Text('May', style: style);
        break;
      case 6:
        text = const Text('Jun', style: style);
        break;
      case 7:
        text = const Text('Jul', style: style);
        break;
      case 8:
        text = const Text('Aug', style: style);
        break;
      case 9:
        text = const Text('Sep', style: style);
        break;
      case 10:
        text = const Text('Oct', style: style);
        break;
      case 11:
        text = const Text('Nov', style: style);
        break;
      case 12:
        text = const Text('Dec', style: style);
        break;
      default:
        text = const Text('a');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff363753),
          strokeWidth: 0.0,
        );
      }, getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff363753),
          strokeWidth: 0.1,
        );
      });

  FlBorderData get borderData => FlBorderData(
        show: false,
        border: const Border(
          bottom: BorderSide(color: Color(0xff4e4965), width: 4),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  // LineChartBarData get lineChartBarData1_1 => LineChartBarData(
  //       isCurved: true,
  //       color: const Color(0xff4af699),
  //       barWidth: 8,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  //         FlSpot(1, 2),
  //         FlSpot(2, 1.5),
  //         FlSpot(3, 1.4),
  //         FlSpot(4, 3.4),
  //         FlSpot(8, 2),
  //         FlSpot(9, 2.2),
  //         FlSpot(12, 1.8),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData1_2 => LineChartBarData(
  //       isCurved: true,
  //       color: const Color(0xffaa4cfc),
  //       barWidth: 8,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(
  //         show: false,
  //         color: const Color(0x00aa4cfc),
  //       ),
  //       spots: const [
  //         FlSpot(1, 1),
  //         FlSpot(3, 2.8),
  //         FlSpot(7, 1.2),
  //         FlSpot(10, 2.8),
  //         FlSpot(11, 2.6),
  //         FlSpot(12, 3.9),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData1_3 => LineChartBarData(
  //       isCurved: true,
  //       color: const Color(0xff27b6fc),
  //       barWidth: 8,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  //         FlSpot(1, 2.8),
  //         FlSpot(3, 1.9),
  //         FlSpot(6, 3),
  //         FlSpot(10, 1.3),
  //         FlSpot(12, 2.5),
  //       ],
  //     );

  // LineChartBarData get lineChartBarData2_1 => LineChartBarData(
  //       isCurved: true,
  //       curveSmoothness: 0,
  //       color: const Color(0x444af699),
  //      barWidth: 1,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: false),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  // FlSpot(1, 1),
  // FlSpot(3, 4),
  // FlSpot(5, 1.8),
  // FlSpot(7, 5),
  // FlSpot(10, 2),
  // FlSpot(12, 2.2),
  // FlSpot(13, 1.8),
  //       ],
  //     );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0x4427b6fc),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(
          show: true,
          gradient: const LinearGradient(
            colors: [
              Color(0x00151C19),
              Color(0x3303429F),
              Color(0x800052CD),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(2, 2.8),
          FlSpot(3, 1.2),
          FlSpot(4, 2.8),
          FlSpot(5, 2.6),
          FlSpot(6, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData2_1 => LineChartBarData(
        isCurved: true,
        color: const Color(0x99aa4cfc),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(
          show: true,
          gradient: const LinearGradient(
            colors: [
              Color(0x00151C19),
              Color(0x325000F9),
              Color(0x825000F9),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(2, 4),
          FlSpot(3, 1.8),
          FlSpot(4, 5),
          FlSpot(5, 2),
          FlSpot(6, 2.2),
        ],
      );

  LineChartBarData get lineChartBarData2_3 => LineChartBarData(
        isCurved: true,
        color: const Color(0x444af699),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(
          show: true,
          gradient: const LinearGradient(
            colors: [
              Color(0x0000F990),
              Color(0x3200F990),
              Color(0x8000F990),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        spots: const [
          FlSpot(1, 3.8),
          FlSpot(2, 1.9),
          FlSpot(3, 5),
          FlSpot(5, 3.3),
          FlSpot(6, 4.5),
        ],
      );

  // LineChartBarData get lineChartBarData2_3 => LineChartBarData(
  //       isCurved: true,
  //       curveSmoothness: 0,
  //       color: const Color(0x4427b6fc),
  //       barWidth: 2,
  //       isStrokeCapRound: true,
  //       dotData: FlDotData(show: true),
  //       belowBarData: BarAreaData(show: false),
  //       spots: const [
  // FlSpot(1, 3.8),
  // FlSpot(3, 1.9),
  // FlSpot(6, 5),
  // FlSpot(10, 3.3),
  // FlSpot(13, 4.5),
  //       ],
  //     );
}

class LineChart_BuyNow extends StatefulWidget {
  const LineChart_BuyNow({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LineChart_BuyNowState();
}

class LineChart_BuyNowState extends State<LineChart_BuyNow> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x00343A42),
                Colors.black,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(18)),
            image: DecorationImage(
                image: AssetImage('assets/images/png/lammo.png'),
                opacity: 0.05,
                fit: BoxFit.fill)),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Statistics 2022',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            _LineChart(isShowingMainData: isShowingMainData),
          ],
        ),
      ),
    );
  }
}
