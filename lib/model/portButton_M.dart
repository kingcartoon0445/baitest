import 'package:baitest/widget/Portfolio/button_portfolio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class buttonPortfolio_M {
  Widget icon;
  String text;
  String money1;
  String money2;
  String money3;
  String ratio;
  bool up;
  buttonPortfolio_M(
      {required this.icon,
      required this.money1,
      required this.money2,
      required this.money3,
      required this.ratio,
      required this.text,
      required this.up});
}

List<buttonPortfolio_M> buttonPortfolios = [
  buttonPortfolio_M(
      icon: SvgPicture.asset(
        'assets/images/svg/Bitcoin.svg',
        height: 30,
        width: 30,
      ),
      money1: '19,654.85',
      money2: '209,545.00',
      money3: '10 BTC',
      ratio: '15.0',
      text: 'BTC',
      up: false),
  buttonPortfolio_M(
      icon: SvgPicture.asset(
        'assets/images/svg/ethereum.svg',
        color: Colors.white,
        height: 30,
        width: 30,
      ),
      money1: '1,024.37',
      money2: '24,374.68',
      money3: '24,2 ETH',
      ratio: '19.0',
      text: 'ETH',
      up: true),
  buttonPortfolio_M(
      icon: SvgPicture.asset(
        'assets/images/svg/logo.svg',
        color: Colors.blue,
        height: 30,
        width: 30,
      ),
      money1: '0.00000000021',
      money2: '18,214.01',
      money3: '200,000,000 RBIF',
      ratio: '36.1',
      text: 'RBIF',
      up: false),
  buttonPortfolio_M(
      icon: SvgPicture.asset(
        'assets/images/svg/Celo.svg',
        height: 30,
        width: 30,
      ),
      money1: '0.8512',
      money2: '8,525.85',
      money3: '10,000 CELO',
      ratio: '51.00',
      text: 'CELO',
      up: false),
  buttonPortfolio_M(
      icon: SvgPicture.asset(
        'assets/images/svg/net.svg',
        height: 30,
        width: 30,
      ),
      money1: '3.24',
      money2: '4,222.53',
      money3: '1,300 NEAR',
      ratio: '1.83',
      text: 'NEAR',
      up: false),
];
