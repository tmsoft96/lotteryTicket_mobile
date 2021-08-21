import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/button.dart';
import 'package:lottery_ticket/components/cachedImage.dart';
import 'package:lottery_ticket/pages/chooseNumber/chooseNumber.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

Widget ticketLayout({
  @required BuildContext? context,
}) {
  return Column(
    children: [
      ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        tileColor: WHITE,
        leading: cachedImage(
          context: context,
          image: "",
          height: 40,
          width: 40,
        ),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Supper Ball", style: h5BlackBold),
                Text("Jackpot", style: h6Black),
                Text("\$643 000 000", style: h5PrimaryBold),
              ],
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cachedImage(
                  context: context,
                  image: "",
                  height: 25,
                  width: 40,
                ),
                Text("Next Draw", style: h6Black),
                Text("06:25:43:12", style: h5BlackBold),
              ],
            ),
            SizedBox(width: 5),
            button(
              onPressed: () {
                Navigator.of(context!).push(
                  MaterialPageRoute(
                    builder: (context) => ChooseNumberPage(),
                  ),
                );
              },
              text: "Play Now",
              color: PRIMARYCOLOR,
              context: context,
              useWidth: false,
              height: 25,
              buttonRadius: 30,
              padding: EdgeInsets.symmetric(horizontal: 5),
            ),
          ],
        ),
      ),
      Divider(indent: 60)
    ],
  );
}
