import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/diceBackground.dart';
import 'package:lottery_ticket/pages/tickets/ticketsPage.dart';

import 'widget/homepageBottomWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;

  List<Widget> _widgetList = [
    Tickets(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          diceBackground(context),
          SafeArea(child: _widgetList[_index]),
        ],
      ),
      bottomNavigationBar: homepageBottomWidget(
        onTicket: () => _setWidget(0),
        onHome: () => _setWidget(1),
        onAccount: () => _setWidget(2),
        index: _index,
      ),
    );
  }

  void _setWidget(int index) {
    setState(() {
      _index = index;
    });
  }
}
