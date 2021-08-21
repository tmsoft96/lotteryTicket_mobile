import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/diceBackground.dart';
import 'package:lottery_ticket/config/navigation.dart';

import 'widget/resultWidget.dart';
import 'widget/winResultWidget.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  bool _isShowResult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          diceBackground(context),
          SafeArea(
            child: _isShowResult
                ? winResultWidget(
                    context: context,
                    onback: () =>
                        navigation(context: context, pageName: "back"),
                  )
                : resultWidget(
                    onback: () =>
                        navigation(context: context, pageName: "back"),
                    context: context,
                    onSeeReult: () {
                      setState(() {
                        _isShowResult = true;
                      });
                    },
                  ),
          )
        ],
      ),
    );
  }
}
