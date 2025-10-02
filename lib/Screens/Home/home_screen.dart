import 'package:flutter/material.dart';
import 'package:tickts/Screens/Home/widgets/hotel_card.dart';
import 'package:tickts/base/Utils/all_json.dart';
import 'package:tickts/base/widgets/app_double_text.dart';
import 'package:tickts/base/widgets/my_text_faild.dart';
import 'package:tickts/base/res/media.dart';
import 'package:tickts/base/res/styles/app_styles.dart';
import 'package:tickts/Screens/Home/widgets/tickt_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(height: 40),
            // the header ( good morning and book ticket and the logo)
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning",
                        style: AppStyles.headLineStyle3,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Book ticket",
                        style: AppStyles.headLineStyle1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),

                SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AppMedia.logo, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            MyTextFaild(),
            SizedBox(height: 40),
            // The horizontal 2 texts "upcomming flights" and "View all"
            AppDoubleTtxt(
              bigText: 'UpComming Flights',
              smallText: 'View all',
              funcNavigator: () => Navigator.pushNamed(context, "AllTickets"),
            ),
            SizedBox(height: 20),
            // The Tickets maping
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList
                    .take(2)
                    .map((singleTicket) => TicktView(ticket: singleTicket))
                    .toList(),
              ),
            ),
            SizedBox(height: 20),
            // The horizontal 2 texts "Hotels" and "View all"
            AppDoubleTtxt(
              bigText: 'Hotels',
              smallText: 'View all',
              funcNavigator: () => Navigator.pushNamed(context, "Hotels"),
            ),
            SizedBox(height: 10),
            //the hotel cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList
                    .take(2)
                    .map(
                      (singleHotel) => Container(
                        margin: EdgeInsets.only(right: 16),
                        child: HotelCard(hotel: singleHotel),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
