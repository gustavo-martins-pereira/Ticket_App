import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotelData;

  const Hotel({super.key, required this.hotelData});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.65,
      height: 350,
      margin:  const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========== PHOTO ==========
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotelData['image']}"
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),


          // ========== INFOS ==========
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotelData["place"], style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor)),
          ),
          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(hotelData["destination"], style: AppStyles.headLineStyle2.copyWith(color: Colors.white)),
          ),
          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("\$${hotelData['price']}/night", style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor)),
          ),
        ],
      ),
    );
  }
}
