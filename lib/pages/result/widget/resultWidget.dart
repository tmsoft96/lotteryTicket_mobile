import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/button.dart';
import 'package:lottery_ticket/components/textField.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

Widget resultWidget({
  @required void Function()? onback,
  @required void Function()? onSeeReult,
  @required BuildContext? context,
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
          Text("See Result", style: h5White),
        ],
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                  textFormField(
                    hintText: "Jackports",
                    controller: null,
                    focusNode: null,
                    
                  ),
                  Text("Selected Numbers", style: h5BlackBold),
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
          ],
        ),
      ),
    ],
  );
}
