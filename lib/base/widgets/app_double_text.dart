import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

// ignore: must_be_immutable
class AppDoubleTtxt extends StatelessWidget {
  AppDoubleTtxt({super.key, required this.bigText, required this.smallText});
  String bigText;
  String smallText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: () {},
          child: Text(
            smallText,
            style: AppStyles.defultTextStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
