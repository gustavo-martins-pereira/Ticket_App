import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_dots_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot_widget.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 190,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // ========== TOP ==========
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketTopColor,
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
                      Text("NYC", style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),

                      // == PLANE ==
                      const BigDot(),
                      Expanded(child: Stack(children: [
                        const SizedBox(
                          height: 24,
                          child: AppLayoutDotsBuilderWidget(randomDivider: 6),
                        ),
                        Center(child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(Icons.local_airport_rounded, color: Colors.white)),
                        ),
                      ])),
                      const BigDot(),

                      // == DESTINATION ==
                      Expanded(child: Container()),
                      Text("LDN", style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 3),

                  // ===== BOTTOM TEXTS =====
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New-York", style: AppStyles.headLineStyle4.copyWith(color: Colors.white))
                      ),
                      Expanded(child: Container()),
                      Text("8H 30M", style: AppStyles.headLineStyle4.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text("London", style: AppStyles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end)
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ========== DETACHED ==========
            Container(
              height: 20,
              color: AppStyles.ticketBottomColor,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCircle(isRight: true),
                  Expanded(child: Stack(children: [
                    SizedBox(
                      height: 24,
                      child: AppLayoutDotsBuilderWidget(randomDivider: 16, detachWidth: 8,),
                    ),
                  ])),
                  BigCircle(isRight: false),
                ],
              ),
            ),

            // ========== BOTTOM ==========
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBottomColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
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
                        child: Text("1 May".toUpperCase(), style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      ),
                      Expanded(child: Container()),

                      // == PLANE ==
                      Text("08:00 AM", style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),

                      // == DESTINATION ==
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text("23", style: AppStyles.headLineStyle3.copyWith(color: Colors.white), textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),

                  // ===== BOTTOM TEXTS =====
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("Date", style: AppStyles.headLineStyle4.copyWith(color: Colors.white))
                      ),
                      Expanded(child: Container()),
                      Text("Departure Time", style: AppStyles.headLineStyle4.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text("Number", style: AppStyles.headLineStyle4.copyWith(color: Colors.white), textAlign: TextAlign.end),
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
