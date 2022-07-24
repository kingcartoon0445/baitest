import 'package:flutter/cupertino.dart';
import 'package:baitest/common/colorsApp.dart';

class ChartCircel {
  double radius;
  Color color;
  String text;
  ChartCircel({required this.color, required this.radius, required this.text});
}

List<ChartCircel> lstChartCircels = [
  ChartCircel(color: AppColors.BTCColor, radius: 35, text: 'BTC'),
  ChartCircel(color: AppColors.NEARColor, radius: 5, text: 'NEAR'),
  ChartCircel(color: AppColors.RBIFColor, radius: 20, text: 'RBIF'),
  ChartCircel(color: AppColors.CELOColor, radius: 10, text: 'CELO'),
  ChartCircel(color: AppColors.ETHColor, radius: 30, text: 'ETH'),
];
