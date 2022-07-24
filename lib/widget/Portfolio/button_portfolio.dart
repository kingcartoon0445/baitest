import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:baitest/model/portButton_M.dart';

class ButtonPortfolio extends StatefulWidget {
  buttonPortfolio_M buttonPortfolio;

  ButtonPortfolio({Key? key, required this.buttonPortfolio}) : super(key: key);

  @override
  State<ButtonPortfolio> createState() => _ButtonPortfolioState();
}

class _ButtonPortfolioState extends State<ButtonPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
      child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF404040),
              width: 1.5,
            ),
            image: const DecorationImage(
                image: AssetImage('assets/images/png/lammo.png'),
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: widget.buttonPortfolio.icon,
                // child: SvgPicture.asset(
                //   'assets/images/svg/Celo.svg',
                //   height: 30,
                //   width: 30,
                // ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    textAlign: TextAlign.start,
                    widget.buttonPortfolio.text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        '\$' + widget.buttonPortfolio.money1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      if (widget.buttonPortfolio.up == true) ...[
                        const Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Color(0xFF02C97F),
                          size: 15,
                        ),
                      ] else ...[
                        const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Color(0xFFC12424),
                          size: 15,
                        ),
                      ],
                      Text(
                        '${widget.buttonPortfolio.ratio}%',
                        style: TextStyle(
                            color: widget.buttonPortfolio.up
                                ? Color(0xFF02C97F)
                                : Color(0xFFC12424),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.buttonPortfolio.money2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      widget.buttonPortfolio.money3,
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
