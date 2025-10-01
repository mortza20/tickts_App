import 'package:flutter/material.dart';
import 'package:tickts/Screens/all_tickets.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

// ignore: must_be_immutable
class AppDoubleTtxt extends StatelessWidget {
  const AppDoubleTtxt({super.key, required this.bigText, required this.smallText,required this.funcNavigator});
  final String bigText;
  final String smallText;
  final VoidCallback funcNavigator;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: funcNavigator,
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
