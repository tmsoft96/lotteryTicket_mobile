import 'package:flutter/material.dart';
import 'package:lottery_ticket/components/button.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

Widget chooseNumberWidget({
  @required void Function()? onback,
  @required void Function()? onMarkPayment,
  @required BuildContext? context,
  @required List<Map<String, dynamic>>? numbersList,
  @required void Function(int number)? onNumberSelected,
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
          Text("Choose Number", style: h5White),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose", style: h3WhiteBold),
            SizedBox(height: 10),
            Text("5 Numbers", style: h4White),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                for (var data in numbersList!)
                  if (data["selected"])
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context!).size.width * .15,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: WHITE,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "${data["number"]}",
                        style: h2Primary,
                      ),
                    ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 200),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: WHITE,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("02:00 PM", style: h5BlackBold),
                      button(
                        onPressed: () {},
                        text: "Single",
                        color: WHITE,
                        context: context,
                        useWidth: false,
                        elevation: 0,
                        textColor: BLACK,
                        postFixIcon: Icon(Icons.arrow_drop_down),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 70, top: 50),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 5,
                  runSpacing: 10,
                  children: [
                    for (var data in numbersList)
                      GestureDetector(
                        onTap: () => onNumberSelected!(data["number"]),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: ASHDEEP1),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor:
                                data["selected"] ? PRIMARYCOLOR : WHITE,
                            child: Text(
                              "${data["number"]}",
                              style:
                                  data["selected"] ? h5WhiteBold : h5BlackBold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              child: button(
                onPressed: onMarkPayment,
                text: "Make a Payment",
                color: PRIMARYCOLOR,
                context: context,
                useWidth: false,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
