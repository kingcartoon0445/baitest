import 'package:flutter/material.dart';
import 'package:baitest/common/colorsApp.dart';
import 'package:baitest/model/buyNowButton_M.dart';
import 'package:baitest/widget/buynow/button_buynow.dart';
import 'package:baitest/widget/buynow/chartLine_buynow.dart';

class BuyNowPage extends StatefulWidget {
  ScrollController scrollController;
  BuyNowPage({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<BuyNowPage> createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: ListView(
        controller: widget.scrollController,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Saved this month',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          const Text(
            '\$ 3,120.00',
            style: TextStyle(
                color: Colors.white, fontSize: 48, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const LineChart_BuyNow(),
          ButtonBuyNow(
            buynow: lstbuynowbutton[0],
            ontap: () {},
          ),
          ButtonBuyNow(
            buynow: lstbuynowbutton[1],
            ontap: () {},
          ),
          ButtonBuyNow(
            buynow: lstbuynowbutton[2],
            ontap: () {},
          )
          // Generated code for this Container Widget...
        ],
      ),
    );
  }
}
