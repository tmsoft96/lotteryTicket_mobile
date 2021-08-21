import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/images.dart';
import 'package:lottery_ticket/spec/styles.dart';

Widget winResultWidget({
  @required void Function()? onback,
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
          mainAxisAlignment: MainAxisAlignment.start,
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
                  Text(
                    "Congratulation! You are a Big Winner...",
                    style: h3BlackBold,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Image.asset(WINNER),
                  SizedBox(height: 10),
                  Text("You get \$2500", style: h3BlackBold),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
