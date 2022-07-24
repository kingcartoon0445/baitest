// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:baitest/common/colorsApp.dart';
import 'package:baitest/page/buynow.dart';
import 'package:baitest/page/Portfolio.dart';
import 'package:baitest/widget/chartCircel.dart';
import 'package:baitest/widget/chartLine.dart';

const double borderRadius = 9.0;

class CustomSwitchState extends StatefulWidget {
  @override
  _CustomSwitchStateState createState() => _CustomSwitchStateState();
}

class _CustomSwitchStateState extends State<CustomSwitchState>
    with SingleTickerProviderStateMixin {
  PageController _pageController = new PageController();
  int activePageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  ScrollController scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          shadowColor: Color.fromARGB(0, 244, 67, 54),
          elevation: 0,
          backgroundColor: AppColors.backgroundColor,
          title: const Text(
            'Statistics',
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 7 / 6,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: _menuBar(context),
                ),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    physics: const ClampingScrollPhysics(),
                    onPageChanged: (int i) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      setState(() {
                        activePageIndex = i;
                      });
                    },
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: Center(
                          child: PortfolioPage(
                            scrollController: scrollController,
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: Center(
                          child: BuyNowPage(
                            scrollController: scrollController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _menuBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 200,
      height: 50,
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 34, 34, 35),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: InkWell(
              borderRadius:
                  const BorderRadius.all(const Radius.circular(borderRadius)),
              onTap: _onPlaceBidButtonPress,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: (activePageIndex == 0)
                    ? BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/png/lammo.png'),
                            opacity: 0.05,
                            fit: BoxFit.fill),
                        color: AppColors.selectpageColor,
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(borderRadius)),
                      )
                    : null,
                child: Center(
                  child: Text(
                    "Place Bid",
                    style: (activePageIndex == 0)
                        ? TextStyle(
                            color: AppColors.textblueColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )
                        : TextStyle(
                            color: AppColors.textgrayColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              borderRadius:
                  const BorderRadius.all(Radius.circular(borderRadius)),
              onTap: _onBuyNowButtonPress,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: (activePageIndex == 1)
                    ? BoxDecoration(
                        border: Border.all(color: const Color(0x0000ff94)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/png/lammo.png'),
                            opacity: 0.05,
                            fit: BoxFit.fill),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(21, 0, 255, 149),
                            Color.fromARGB(21, 0, 255, 149),
                          ],
                        ),
                        borderRadius: const BorderRadius.all(
                            Radius.circular(borderRadius)),
                      )
                    : null,
                child: Text(
                  "Budget",
                  style: (activePageIndex == 1)
                      ? TextStyle(
                          color: AppColors.textgreenColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        )
                      : TextStyle(
                          color: AppColors.textgrayColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPlaceBidButtonPress() {
    _pageController.animateToPage(0,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onBuyNowButtonPress() {
    _pageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}
