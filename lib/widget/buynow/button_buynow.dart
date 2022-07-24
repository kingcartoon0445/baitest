import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baitest/model/buyNowButton_M.dart';

class ButtonBuyNow extends StatefulWidget {
  BuyNowButton buynow;
  Function() ontap;
  ButtonBuyNow({Key? key, required this.buynow, required this.ontap})
      : super(key: key);

  @override
  State<ButtonBuyNow> createState() => _ButtonBuyNowState();
}

class _ButtonBuyNowState extends State<ButtonBuyNow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: 360,
        height: 80,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff343A42),
              Color(0xff000000),
              Color(0xff343A42),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 30,
              color: Color(0x40000000),
              offset: Offset(5, 5),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      SvgPicture.asset(
                        // ignore: prefer_interpolation_to_compose_strings
                        'assets/images/svg/' + widget.buynow.icon,
                        color: const Color(0xFFF8F8F8),
                      ),
                      // Generated code for this Container Widget...
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: widget.buynow.color, //0xFFAEDC81//
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 30,
                              color: Color(0x40000000),
                              offset: Offset(5, 5),
                              spreadRadius: 0,
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Text(
                        widget.buynow.text,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFFADC0D1),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("\$12,402.50",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: widget.buynow.color)),
                      Row(
                        children: [
                          if (widget.buynow.up == true) ...[
                            const Icon(
                              Icons.arrow_drop_up_rounded,
                              color: Color(0xFF02C97F),
                              size: 8,
                            ),
                          ] else ...[
                            const Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFFC12424),
                              size: 8,
                            ),
                          ],
                          Text(widget.buynow.ratio + '%',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: widget.buynow.up
                                      ? Color(0xFF02C97F)
                                      : Color(0xFFC12424)))
                        ],
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
