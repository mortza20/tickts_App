import 'package:flutter/material.dart';
import 'package:tickts/base/res/styles/app_styles.dart';
import 'package:tickts/base/widgets/app_coulmn_text_layout.dart';
import 'package:tickts/base/widgets/app_layout_bulder_widget.dart';
import 'package:tickts/base/widgets/big_circle.dart';
import 'package:tickts/base/widgets/big_dot.dart';
import 'package:tickts/base/widgets/text_style_fourth.dart';
import 'package:tickts/base/widgets/text_style_thired.dart';

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
            //blue part of the ticket
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
                      TextStyleThired(text: "NYC"),
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
                      TextStyleThired(text: "LDN"),
                    ],
                  ),
                  //show the departure and destination name with time secound line
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New-York"),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //tow circles and the dash line
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
            // orange part of the ticket
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppCoulmnTextLayout(
                        lineOneText: '1 MAY',
                        lineTowTEXT: 'date',
                        theTextALign: CrossAxisAlignment.start,
                      ),
                      AppCoulmnTextLayout(
                        lineOneText: '08:00 AM',
                        lineTowTEXT: 'Departrue time',
                        theTextALign: CrossAxisAlignment.center,
                      ),
                      AppCoulmnTextLayout(
                        lineOneText: '23',
                        lineTowTEXT: 'Number',
                        theTextALign: CrossAxisAlignment.end,
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
