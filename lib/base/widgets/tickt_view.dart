import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';
import 'package:tickts/base/widgets/app_layout_bulder_widget.dart';
import 'package:tickts/base/widgets/big_circle.dart';
import 'package:tickts/base/widgets/big_dot.dart';

class TicktView extends StatelessWidget {
  const TicktView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketColor1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show the departure and destination with icons first line
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBulderWidget(randomDivider: 6),
                            ),
                            Transform.rotate(
                              angle: 1.57,
                              child: Center(
                                child: const Icon(
                                  Icons.airplanemode_active_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  //show the departure and destination name with time secound line
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketColor2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCircle(isRight: true),
                  Expanded(
                    child: AppLayoutBulderWidget(randomDivider: 16, width: 6),
                  ),
                  BigCircle(isRight: false),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show the departure and destination with icons first line
                  Row(
                    children: [
                      Text(
                        "1 MAY",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),

                      Expanded(
                        child: Text(
                          "08:00 AM",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Expanded(child: Container()),
                      Text(
                        "23",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  //show the departure and destination name with time secound line
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "date",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure Time",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
