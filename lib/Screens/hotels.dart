import 'package:flutter/material.dart';
import 'package:tickts/Screens/Home/widgets/hotel_card.dart';
import 'package:tickts/base/Utils/all_json.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Hotels")),
      body: ListView(
        children: hotelList
            .map(
              (singleHotel) => Container(
                margin: EdgeInsets.only(bottom: 16),
                child: HotelCard(hotel: singleHotel),
              ),
            )
            .toList(),
      ),
    );
  }
}
