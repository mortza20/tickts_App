import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

class TextStyleThired extends StatelessWidget {
  final String text;
  const TextStyleThired({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
    );
  }
}
