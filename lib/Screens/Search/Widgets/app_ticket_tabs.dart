import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          AppTabs(
            tabsText: "Airline Tickets",
            tabsBorder: false,
            tabsColor: false,
          ),
          AppTabs(tabsText: "Hotels", tabsBorder: true, tabsColor: true),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({
    super.key,
    this.tabsBorder = false,
    this.tabsColor = false,
    required this.tabsText,
  });
  final String tabsText;
  final bool tabsBorder;
  final bool tabsColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: tabsColor == false ? Colors.white : Colors.transparent,
        borderRadius: tabsBorder == false
            ? BorderRadius.horizontal(left: Radius.circular(50))
            : BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      child: Center(child: Text(tabsText)),
    );
  }
}
