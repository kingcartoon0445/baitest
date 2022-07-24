import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baitest/model/portButton_M.dart';
import 'package:baitest/widget/Portfolio/button_portfolio.dart';

class Tabportfolio extends StatefulWidget {
  ScrollController scrollController;
  Tabportfolio({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<Tabportfolio> createState() => _TabportfolioState();
}

class _TabportfolioState extends State<Tabportfolio> {
  @override
  Widget build(BuildContext context) {
    return // Generated code for this TabBar Widget...
        DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(
                text: 'Assets',
              ),
              Tab(
                text: 'History',
              ),
              Tab(
                text: 'News',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFF404040),
                                width: 1.5,
                              ),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/png/lammo.png'),
                                  opacity: 0.05,
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 30,
                                  color: Color(0x3F000000),
                                  offset: Offset(5, 5),
                                )
                              ],
                              gradient: const LinearGradient(
                                colors: [Color(0x00343A42), Color(0x4C000000)],
                                begin: Alignment.center,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Search',
                                    style: TextStyle(
                                        color: Color(0xFFADC0D1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.search,
                                    size: 25,
                                    color: Color(0xFFADC0D1),
                                  )
                                ],
                              ),
                            ))),

// Generated code for this Container Widget...
                    ButtonPortfolio(buttonPortfolio: buttonPortfolios[0]),
                    ButtonPortfolio(buttonPortfolio: buttonPortfolios[1]),
                    ButtonPortfolio(buttonPortfolio: buttonPortfolios[2]),
                    ButtonPortfolio(buttonPortfolio: buttonPortfolios[3]),
                    ButtonPortfolio(buttonPortfolio: buttonPortfolios[4]),
                  ],
                ),
                Text(
                  'Tab View 2',
                ),
                Text(
                  'Tab View 3',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
