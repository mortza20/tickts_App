import 'package:flutter/material.dart';
import 'package:tickts/Screens/Search/Widgets/app_icon.dart';
import 'package:tickts/Screens/Search/Widgets/app_ticket_tabs.dart';
import 'package:tickts/Screens/Search/Widgets/find_ticket.dart';
import 'package:tickts/base/res/styles/app_styles.dart';
import 'package:tickts/base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(height: 60),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20),
          AppTicketTabs(),
          SizedBox(height: 20),
          AppIcon(icon: Icons.flight_takeoff_rounded, text: 'Deprature'),
          SizedBox(height: 20),
          AppIcon(icon: Icons.flight_land_rounded, text: 'Arrival'),
          SizedBox(height: 20),
          FindTicket(),
          SizedBox(height: 35),
          AppDoubleTtxt(
            bigText: 'UpComming Flights',
            smallText: 'View all',
            funcNavigator: () => Navigator.pushNamed(context, "AllTickets"),
          ),
        ],
      ),
    );
  }
}
