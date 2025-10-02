import 'package:flutter/material.dart';
import 'package:tickts/base/Utils/all_json.dart';
import 'package:tickts/Screens/Home/widgets/tickt_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Tickets")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: ticketList
              .map(
                (singleTicket) => Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TicktView(ticket: singleTicket),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
