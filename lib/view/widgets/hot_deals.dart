import 'package:flutter/material.dart';

class HotDealCard extends StatelessWidget {
  final Color backgroundColor;
  final String minutesText;
  final String internetText;
  final String smsText;
  final String priceText;

  const HotDealCard({
    Key? key,
    required this.backgroundColor,
    required this.minutesText,
    required this.internetText,
    required this.smsText,
    required this.priceText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(minutesText),
          Text(internetText),
          Text(smsText),
          Text(priceText),
        ],
      ),
    );
  }
}


