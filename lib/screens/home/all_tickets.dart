import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view_widget.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((ticket) => Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: TicketView(ticketData: ticket, wholeScreen: true))
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
