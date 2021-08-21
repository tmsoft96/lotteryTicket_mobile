import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/diceBackground.dart';
import 'package:lottery_ticket/config/navigation.dart';
import 'package:lottery_ticket/pages/result/resultPage.dart';

import 'widget/paymentWidget.dart';

class PaymentPage extends StatefulWidget {
  final List<int>? numberList;

  const PaymentPage({
    Key? key,
    @required this.numberList,
  }) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          diceBackground(context),
          SafeArea(
            child: paymentWidget(
              onback: () => navigation(context: context, pageName: "back"),
              context: context,
              numberList: widget.numberList,
              onPaymentNow: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ResultPage(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
