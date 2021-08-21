import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/diceBackground.dart';
import 'package:lottery_ticket/components/toast.dart';
import 'package:lottery_ticket/config/navigation.dart';
import 'package:lottery_ticket/pages/payment/paymentPage.dart';
import 'package:lottery_ticket/spec/colors.dart';

import 'widget/chooseNumberWidget.dart';

class ChooseNumberPage extends StatefulWidget {
  const ChooseNumberPage({Key? key}) : super(key: key);

  @override
  _ChooseNumberPageState createState() => _ChooseNumberPageState();
}

class _ChooseNumberPageState extends State<ChooseNumberPage> {
  List<Map<String, dynamic>> _numbersList = [];

  @override
  void initState() {
    super.initState();
    for (int x = 0; x < 99; ++x) {
      _numbersList += [
        {
          "number": x + 1,
          "selected": false,
        }
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          diceBackground(context),
          SafeArea(
            child: chooseNumberWidget(
              onback: () => navigation(
                context: context,
                pageName: "back",
              ),
              context: context,
              onMarkPayment: () => _onMarkPayment(),
              numbersList: _numbersList,
              onNumberSelected: (int number) => _onNumberSelected(number),
            ),
          ),
        ],
      ),
    );
  }

  void _onMarkPayment() {
    List<int> numbers = [];
    for (var data in _numbersList) {
      if (data["selected"]) numbers += [data["number"]];
    }
    if (numbers.length == 5) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PaymentPage(numberList: numbers),
        ),
      );
    } else {
      toastContainer(
        text: "Select 5 numbers to continue",
        backgroundColor: RED,
      );
    }
  }

  void _onNumberSelected(int number) {
    int numberSelected = 0;
    for (var data in _numbersList) if (data["selected"]) numberSelected++;
    if (_numbersList[number - 1]["selected"]) {
      setState(() {
        _numbersList[number - 1] = {
          "number": number,
          "selected": !_numbersList[number - 1]["selected"],
        };
      });
    } else {
      if (numberSelected < 5)
        setState(() {
          _numbersList[number - 1] = {
            "number": number,
            "selected": !_numbersList[number - 1]["selected"],
          };
        });
      else
        toastContainer(
          text: "You have selected 5 numbers",
          backgroundColor: RED,
        );
    }
  }
}
