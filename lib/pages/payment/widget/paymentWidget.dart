import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/button.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

Widget paymentWidget({
  @required void Function()? onback,
  @required void Function()? onPaymentNow,
  @required BuildContext? context,
  @required List<int>? numberList,
}) {
  return Stack(
    children: [
      Row(
        children: [
          IconButton(
            color: WHITE,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: onback,
          ),
          Text("Payment", style: h5White),
        ],
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("02:00 PM", style: h4WhiteBold),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 40,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: WHITE,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("Selected Numbers", style: h5BlackBold),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int x = 0; x < numberList!.length; ++x) ...[
                        Text("${numberList[x]}", style: h2Black),
                        if (x < 4) Text(",  ", style: h2Black)
                      ]
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Number of Draws", style: h5BlackBold),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int x = 0; x < 3; ++x) ...[
                        CircleAvatar(
                          backgroundColor: PRIMARYCOLOR,
                          child: Text("${x + 1}", style: h5WhiteBold),
                        ),
                        SizedBox(width: 10),
                      ],
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Posible Winners", style: h5BlackBold),
                  SizedBox(height: 10),
                  Text("\$100 - \$1200", style: h5BlackBold),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Total : \$10", style: h5WhiteBold),
            SizedBox(height: 20),
            button(
              onPressed: onPaymentNow,
              textStyle: h5WhiteBold,
              text: "Payment Now",
              color: WHITE,
              context: context,
              textColor: PRIMARYCOLOR,
              divideWidth: .6
            ),
          ],
        ),
      ),
    ],
  );
}
