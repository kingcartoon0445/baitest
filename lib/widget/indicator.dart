import 'package:flutter/material.dart';
import 'package:baitest/common/colorsApp.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;
  final String ridus;

  const Indicator(
      {Key? key,
      required this.color,
      required this.text,
      required this.isSquare,
      this.size = 16,
      this.textColor = const Color(0xff505050),
      required this.ridus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 25),
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        Text(
          ridus,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textgrayColor),
        )
      ],
    );
  }
}
