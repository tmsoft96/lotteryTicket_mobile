import 'package:flutter/material.dart';
import 'package:lottery_ticket/pages/homepage/tickets/ticketsPage.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/images.dart';

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
          Image.asset(
            DICE,
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
          ),
          Container(
            color: PRIMARYCOLOR.withOpacity(.9),
            height: double.maxFinite,
            width: double.maxFinite,
          ),
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
