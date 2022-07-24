// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:baitest/model/chartCircel.dart';
import 'package:baitest/widget/Portfolio/butonSelcet.dart';
import 'package:baitest/widget/Portfolio/tabPortfolio.dart';
import 'package:baitest/widget/chartCircel.dart';
import 'package:baitest/widget/chartLine.dart';

class PortfolioPage extends StatefulWidget {
  ScrollController scrollController;
  PortfolioPage({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

List<bool> select = [true, false, false, false, false, false];

class _PortfolioPageState extends State<PortfolioPage> {
  swapStt(int index) {
    for (int i = 0; i < select.length; i++) {
      if (i != index) {
        select[i] = false;
      } else {
        select[i] = true;
      }
      setState(() {
        select;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      controller: widget.scrollController,
      center: centerKey,
      slivers: [
        SliverList(
            key: centerKey,
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 50,
              ),
              PieChartSample2(
                chartCircel: lstChartCircels,
              ),
              LineChartSample1(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonSelect(
                    text: '1H',
                    select: select[0],
                    ontap: () {
                      swapStt(0);
                    },
                  ),
                  ButtonSelect(
                    text: '1D',
                    select: select[1],
                    ontap: () {
                      swapStt(1);
                    },
                  ),
                  ButtonSelect(
                    text: '1W',
                    select: select[2],
                    ontap: () {
                      swapStt(2);
                    },
                  ),
                  ButtonSelect(
                    text: '1M',
                    select: select[3],
                    ontap: () {
                      swapStt(3);
                    },
                  ),
                  ButtonSelect(
                    text: '1Y',
                    select: select[4],
                    ontap: () {
                      swapStt(4);
                    },
                  ),
                  ButtonSelect(
                    text: 'ALL',
                    select: select[5],
                    ontap: () {
                      swapStt(5);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5000,
                child: Tabportfolio(
                  scrollController: widget.scrollController,
                ),
              )
            ])),
      ],
    );
  }
}
// Column(
//       children: [
//         ListView(
//           controller: widget.scrollController,
//           physics: NeverScrollableScrollPhysics(),
//           children: [
            // SizedBox(
            //   height: 50,
            // ),
//             PieChartSample2(),
//             LineChartSample1(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ButtonSelect(
            //       text: '1H',
            //       select: select[0],
            //       ontap: () {
            //         swapStt(0);
            //       },
            //     ),
            //     ButtonSelect(
            //       text: '1D',
            //       select: select[1],
            //       ontap: () {
            //         swapStt(1);
            //       },
            //     ),
            //     ButtonSelect(
            //       text: '1W',
            //       select: select[2],
            //       ontap: () {
            //         swapStt(2);
            //       },
            //     ),
            //     ButtonSelect(
            //       text: '1M',
            //       select: select[3],
            //       ontap: () {
            //         swapStt(3);
            //       },
            //     ),
            //     ButtonSelect(
            //       text: '1Y',
            //       select: select[4],
            //       ontap: () {
            //         swapStt(4);
            //       },
            //     ),
            //     ButtonSelect(
            //       text: 'ALL',
            //       select: select[5],
            //       ontap: () {
            //         swapStt(5);
            //       },
            //     ),
            //   ],
            // ),
            // // Container(
            // //   height: 500,
            // //   child: Tabportfolio(
            // //     scrollController: widget.scrollController,
            // //   ),
            // // )
//           ],
//         ),
//       ],
//     );
  
