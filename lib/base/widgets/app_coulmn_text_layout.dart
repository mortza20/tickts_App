import 'package:flutter/material.dart';
import 'package:tickts/base/widgets/text_style_fourth.dart';
import 'package:tickts/base/widgets/text_style_thired.dart';

class AppCoulmnTextLayout extends StatelessWidget {
  String lineOneText;
  String lineTowTEXT;
  final CrossAxisAlignment theTextALign;
  AppCoulmnTextLayout({
    super.key,
    required this.lineOneText,
    required this.lineTowTEXT,
    this.theTextALign = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: theTextALign,
      children: [
        TextStyleThired(text: lineOneText),
        SizedBox(height: 5),
        TextStyleFourth(text: lineTowTEXT),
      ],
    );
  }
}
