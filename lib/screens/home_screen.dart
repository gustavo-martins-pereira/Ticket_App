import 'package:flutter/material.dart';

import '../base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // ===== INTRODUCTION =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle2),
                        const SizedBox(height: 5),
                        Text("Book tickets", style: AppStyles.headLineStyle1)
                      ],
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    )
                  ],
                ),

                // ===== SEARCH BAR =====
                const Row(
                  children: [
                    Text("Text 1"),
                    Text("Text 2")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
