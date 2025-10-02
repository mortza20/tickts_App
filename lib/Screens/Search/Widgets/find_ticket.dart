import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
        color: AppStyles.findTicktColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Find Ticket",
          style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
