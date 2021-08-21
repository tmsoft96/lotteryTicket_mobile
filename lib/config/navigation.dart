import 'package:flutter/material.dart';
import 'package:lottery_ticket/pages/homepage/homepage.dart';

void navigation({
  @required BuildContext? context,
  @required String? pageName,
}) {
  switch (pageName!.toLowerCase()) {
    case "back":
      Navigator.of(context!).pop();
      break;
    case "homepage":
      Navigator.pushAndRemoveUntil(
          context!,
          MaterialPageRoute(builder: (context) => Homepage()),
          (Route<dynamic> route) => false);
      break;
    default:
      print("$pageName does not exit");
      break;
  }
}
