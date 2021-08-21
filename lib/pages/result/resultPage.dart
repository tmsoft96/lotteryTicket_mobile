import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/diceBackground.dart';
import 'package:lottery_ticket/config/navigation.dart';

import 'widget/resultWidget.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          diceBackground(context),
          SafeArea(
            child: resultWidget(
              onback: () => navigation(context: context, pageName: "back"),
              context: context,
              onSeeReult: () {},
            ),
          )
        ],
      ),
    );
  }
}
