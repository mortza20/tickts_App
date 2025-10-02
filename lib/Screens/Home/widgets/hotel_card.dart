import 'package:flutter/material.dart';

import 'package:tickts/base/res/styles/app_styles.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: size.width * 0.6,
        child: Container(
          height: 350,
          decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(
                    "assets/images/${hotel["image"]}",
                    fit: BoxFit.cover,
                    height: 180,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  hotel["place"],
                  style: AppStyles.headLineStyle1.copyWith(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  hotel['destination'],
                  style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  hotel['price'],
                  style: AppStyles.headLineStyle1.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
