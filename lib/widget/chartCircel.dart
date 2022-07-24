import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:baitest/common/colorsApp.dart';
import 'package:baitest/model/chartCircel.dart';
import 'package:baitest/widget/indicator.dart';

// ignore: must_be_immutable
class PieChartSample2 extends StatefulWidget {
  List<ChartCircel> chartCircel;
  PieChartSample2({Key? key, required this.chartCircel}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PieChart2State(chartCircels: chartCircel);
  }
}

class PieChart2State extends State {
  int touchedIndex = -1;
  List<ChartCircel> chartCircels;
  PieChart2State({required this.chartCircels});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Main Portofolio',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.remove_red_eye_outlined,
                                color: Colors.white)
                          ],
                        ),
                        Text('\$ 4,562.52',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700))
                      ]),
                ),
                Center(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                          pieTouchData: PieTouchData(touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
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
                          }),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          sectionsSpace: 0,
                          centerSpaceRadius: 120,
                          sections: showingSections(chartCircels)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            margin: EdgeInsets.only(top: 40),
            height: 100,
            child: Center(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var chartCircel = chartCircels[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Indicator(
                        color: chartCircel.color,
                        text: chartCircel.text,
                        ridus: chartCircel.radius.toString() + '%',
                        isSquare: true,
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections(List<ChartCircel> chartCircel) {
    return List.generate(5, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 15.0 : 15.0;

      return PieChartSectionData(
        color: chartCircel[i].color,
        value: chartCircel[i].radius,
        radius: radius,
        borderSide: BorderSide(color: AppColors.RBIFColor),
        title: '',
        titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff)),
      );
    });
  }
}
