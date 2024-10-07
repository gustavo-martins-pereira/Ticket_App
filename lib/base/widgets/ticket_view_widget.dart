import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_dots_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketData;
  final bool wholeScreen;
  final bool? isColor;

  const TicketView({super.key, required this.ticketData, this.wholeScreen = false, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 190,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
        child: Column(
          children: [
            // ========== TOP ==========
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketTopColor
                    : AppStyles.tickerColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  // ===== TOP TEXTS =====
                  Row(
                    children: [
                      // == DEPARTURE ==
                      Text(ticketData["from"]["code"], style: isColor == null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3),
                      Expanded(child: Container()),

                      // == PLANE ==
                      BigDot(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutDotsBuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                    ? Colors.white
                                    : AppStyles.planeSecondColor
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),

                      // == DESTINATION ==
                      Expanded(child: Container()),
                      Text(ticketData["to"]["code"], style: isColor == null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3),
                    ],
                  ),
                  const SizedBox(height: 3),

                  // ===== BOTTOM TEXTS =====
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticketData["from"]["name"], style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4)),
                      Expanded(child: Container()),
                      Text(ticketData["flying_time"], style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(ticketData["to"]["name"], style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4, textAlign: TextAlign.end)),
                    ],
                  ),
                ],
              ),
            ),

            // ========== DETACHED ==========
            Container(
              height: 20,
              color: isColor == null ? AppStyles.ticketBottomColor : AppStyles.tickerColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCircle(isRight: true, isColor: isColor),
                  Expanded(
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 24,
                          child: AppLayoutDotsBuilderWidget(
                            randomDivider: 16,
                            detachWidth: 8,
                            isColor: isColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  BigCircle(isRight: false, isColor: isColor),
                ],
              ),
            ),

            // ========== BOTTOM ==========
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.ticketBottomColor : AppStyles.tickerColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 20 : 0),
                  bottomRight: Radius.circular(isColor == null ? 20 : 0),
                ),
              ),
              child: Column(
                children: [
                  // ===== TOP TEXTS =====
                  Row(
                    children: [
                      // == DEPARTURE ==
                      SizedBox(
                        width: 100,
                        child: Text(ticketData["date"].toUpperCase(), style: isColor == null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3),
                      ),
                      Expanded(child: Container()),

                      // == PLANE ==
                      Text(ticketData["departure_time"], style: isColor == null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3),

                      // == DESTINATION ==
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(ticketData["number"].toString(), style: isColor == null ? AppStyles.headLineStyle3.copyWith(color: Colors.white) : AppStyles.headLineStyle3, textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),

                  // ===== BOTTOM TEXTS =====
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text("Date", style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4)),
                      Expanded(child: Container()),
                      Text("Departure Time", style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text("Number", style: isColor == null ? AppStyles.headLineStyle4.copyWith(color: Colors.white) : AppStyles.headLineStyle4, textAlign: TextAlign.end),
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
