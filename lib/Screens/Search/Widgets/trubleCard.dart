import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';

class Trublecard extends StatelessWidget {
  const Trublecard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .42,
          height: 405,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/plane_sit.jpg",
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "20% discount on the early booking of this flight> Don't miss!!",
                style: AppStyles.headLineStyle2,
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * .44,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xff3ab8b8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discount\nfor survey",
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Take the survey about our services and get discount",
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -45,
              top: -40,
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 18, color: AppStyles.circleColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
