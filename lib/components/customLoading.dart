import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/styles.dart';

Widget customLoadingPage({
  String msg = "",
  bool showClose = false,
  void Function()? onClose,
}) {
  return Scaffold(
    backgroundColor: WHITE.withOpacity(.7),
    body: Stack(
      children: [
        Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(color: PRIMARYCOLOR),
                if (msg != "") ...[
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "$msg",
                      style: h5Black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
        if (showClose)
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: BLACK,
              child: IconButton(
                onPressed: onClose,
                color: WHITE,
                icon: Icon(Icons.close),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
