import 'package:flutter/material.dart';

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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        )),
                        SizedBox(height: 5),
                        Text("Book tickets", style: TextStyle(
                          color: Color(0xFF3B3B3B),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ))
                      ],
                    ),
                    Container(
                      color: Colors.deepPurpleAccent,
                      width: 50,
                      height: 50,
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
