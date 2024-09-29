import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ===== BIG BOX =====
        Container(
          width: size.width * 0.42,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.green.shade200,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AppMedia.planeSit,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text("20% discount on the early booking of this flight. Don't miss", style: AppStyles.headLineStyle2),
            ],
          ),
        ),

        // ===== SMALL BOXES =====
        // == TOP BOX ==
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * 0.44,
                  height: 185,
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey", style: AppStyles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                      const SizedBox(height: 10),
                      Text("Take survey about our services and get discount", style: AppStyles.headLineStyle2.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 18,
                      )),
                    ],
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -40,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xFF189999),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width * 0.44,
              height: 185,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFFEC6545),
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.emoji_emotions,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
