import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_double_text_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view_widget.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';

import '../base/res/media.dart';
import '../base/res/styles/app_styles.dart';
import '../base/utils/all_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ========== HEADER ==========
                // ===== INTRODUCTION =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        Text("Book tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),


                // ===== SEARCH BAR =====
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFEFEFEFF),
                  ),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),


                // ========== UPCOMING FLIGHTS ==========
                AppDoubleText(
                  bigText: "Upcoming flights",
                  smallText: "View All",
                  function: () => Navigator.pushNamed(context, "all_tickets"),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((ticket) => TicketView(ticketData: ticket)).toList(),
                  ),
                ),
                const SizedBox(height: 40),


                // ========== UPCOMING FLIGHTS ==========
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View All",
                  function: () => {},
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList.map((hotel) => Hotel(hotelData: hotel)).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
