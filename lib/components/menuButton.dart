import 'package:flutter/material.dart';

Widget menuButton({
  @required BuildContext? context,
  @required String? image,
  @required String? title,
  @required void Function()? function,
}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context!).size.width * .3,
        minHeight: 100,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            child: Image.asset("$image", width: 60, height: 60),
          ),
          Container(
            width: 70,
            child: Center(
              child: Text(
                "$title",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
