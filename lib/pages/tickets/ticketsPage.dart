import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

import 'widget/ticketLayout.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.topCenter,
          child: Text("Lottery Ticket", style: h4WhiteBold),
        ),
        Container(
          margin: EdgeInsets.only(top: 80),
          decoration: BoxDecoration(
            color: WHITE,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                for (int x = 0; x < 10; ++x) ...[
                  ticketLayout(context: context),
                ],
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
