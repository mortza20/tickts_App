import 'package:flutter/material.dart';
import 'package:tickts/base/Utils/all_json.dart';
import 'package:tickts/base/widgets/app_double_text.dart';
import 'package:tickts/base/widgets/my_text_faild.dart';
import 'package:tickts/base/res/media.dart';
import 'package:tickts/base/res/styles/app_styles.dart';
import 'package:tickts/base/widgets/tickt_view.dart';

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
            AppDoubleTtxt(bigText: 'UpComming Flights', smallText: 'View all'),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList
                    .map((singleTicket) => TicktView(ticket: singleTicket))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
