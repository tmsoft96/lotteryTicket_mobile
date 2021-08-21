import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
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
                  textFormField(
                    hintText: "Jackports",
                    controller: null,
                    focusNode: null,
                    isDense: true,
                    borderColor: ASHDEEP,
                    backgroundColor: ASHDEEP,
                    hintColor: BLACK,
                    prefixIcon: FeatherIcons.aperture,
                    prefixIconColor: BLACK,
                  ),
                  SizedBox(height: 10),
                  textFormField(
                    hintText: "30 May 2021",
                    controller: null,
                    focusNode: null,
                    isDense: true,
                    borderColor: ASHDEEP,
                    backgroundColor: ASHDEEP,
                    hintColor: BLACK,
                    prefixIcon: Icons.card_giftcard,
                    prefixIconColor: BLACK,
                    icon: Icons.calendar_today,
                    iconColor: BLACK,
                  ),
                  SizedBox(height: 10),
                  Text("Enter Your Number", style: h5BlackBold),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      for (int x = 0; x < 5; ++x) ...[
                        CircleAvatar(
                          backgroundColor: ASHDEEP,
                          child: Text("${x + 1}", style: h5BlackBold),
                        ),
                        SizedBox(width: 10),
                      ],
                    ],
                  ),
                  SizedBox(height: 20),
                  button(
                    onPressed: onSeeReult,
                    textStyle: h5WhiteBold,
                    text: "See result",
                    color: PRIMARYCOLOR,
                    context: context,
                    textColor: WHITE,
                    elevation: 0,
                    divideWidth: .9,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
