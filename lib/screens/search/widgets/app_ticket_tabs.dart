import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: const Row(
        children: [
          AppTabs(tabText: "Airline tickets"),
          AppTabs(tabText: "Hotels", tabBorder: true, tabColor: true),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  const AppTabs({super.key, this.tabText = "", this.tabBorder = false, this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * 0.45,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: tabBorder
            ? const BorderRadius.horizontal(right: Radius.circular(50))
            : const BorderRadius.horizontal(left: Radius.circular(50)),
        color: tabColor ? Colors.white : Colors.transparent,
      ),
      child: Center(child: Text(tabText)),
    );
  }
}

