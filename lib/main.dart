import 'package:flutter/material.dart';
import 'package:tickts/Screens/all_tickets.dart';
import 'package:tickts/Screens/hotels.dart';
import 'package:tickts/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => BottomNavBar(),
        "AllTickets": (context) => AllTickets(),
        "Hotels":(context)=> Hotels()
      },
    );
  }
}
