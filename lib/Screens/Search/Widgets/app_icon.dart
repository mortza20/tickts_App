import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key, required this.icon, required this.text});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: AppStyles.primaryColor),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
