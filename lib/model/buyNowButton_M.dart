import 'dart:ui';

class BuyNowButton {
  final String icon;
  final String text;
  final Color color;
  final bool up;
  final String money;
  final String ratio;
  const BuyNowButton(
      {required this.icon,
      required this.text,
      required this.color,
      required this.up,
      required this.money,
      required this.ratio});
}

List<BuyNowButton> lstbuynowbutton = [
  const BuyNowButton(
      icon: 'wallet.svg',
      text: 'Incomes',
      color: Color(0xFFA900F9),
      up: true,
      money: '12,402.50',
      ratio: "2.0"),
      const BuyNowButton(
      icon: 'shopping-cart.svg',
      text: 'Spending',
      color: Color(0xFF00BDF9),
      up: true,
      money: '7,229.10',
      ratio: "19.0"),
         const BuyNowButton(
      icon: 'money.svg',
      text: 'Savings',
      color: Color(0xFF00F990),
      up: false,
      money: '3,120.00',
      ratio: "15.0")
];
