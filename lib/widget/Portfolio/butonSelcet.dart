import 'package:flutter/material.dart';
import 'package:baitest/common/colorsApp.dart';

class ButtonSelect extends StatefulWidget {
  String text;
  bool select;
  Function() ontap;
  ButtonSelect(
      {Key? key, required this.ontap, required this.select, required this.text})
      : super(key: key);

  @override
  State<ButtonSelect> createState() => _ButtonSelectState();
}

class _ButtonSelectState extends State<ButtonSelect> {
  @override
  Widget build(BuildContext context) {
    return // Generated code for this Container Widget...
        Container(
      margin: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 20),
      width: 50,
      height: 25,
      // ignore: sort_child_properties_last
      child: InkWell(
        onTap: widget.ontap,
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: widget.select ? Colors.white : AppColors.textgrayColor,
                fontWeight: FontWeight.w600,
                fontSize: 10),
          ),
        ),
      ),
      decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        gradient: widget.select
            ? const LinearGradient(
                colors: [Color(0xFF49E8F6), Color(0xFF0095F9)],
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
              )
            : null,
        color: widget.select == false ? Color(0xFF000000) : null,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
