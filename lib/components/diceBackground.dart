import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/images.dart';

Widget diceBackground(BuildContext context) {
  return Stack(
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
    ],
  );
}
