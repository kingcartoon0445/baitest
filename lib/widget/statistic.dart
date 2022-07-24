import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Asset Allocation'),
        Stack(children: <Widget>[
          CircularProgressIndicator(
            value: 020,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
          ),
          CircularProgressIndicator(
            value: 0.6,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ])
      ],
    );
  }
}
