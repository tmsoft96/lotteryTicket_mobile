import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';

Widget button({
  @required void Function()? onPressed,
  void Function()? onLongPressed,
  @required String? text,
  @required Color? color,
  Color textColor = WHITE,
  bool colorFill = true,
  @required BuildContext? context,
  double divideWidth = 1.0,
  bool useWidth = true,
  double buttonRadius = 20,
  double height = 40,
  double? elevation,
  Color background = BACKGROUND,
  TextStyle? textStyle,
  Widget? icon,
  Widget? postFixIcon,
  bool showBorder = true,
  EdgeInsetsGeometry? padding,
}) {
  return SizedBox(
    width: useWidth ? MediaQuery.of(context!).size.width * divideWidth : null,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      child: icon == null && postFixIcon == null
          ? Text("$text")
          : Row(
              children: [
                if (icon != null) icon,
                SizedBox(width: 10),
                Text("$text"),
                if (postFixIcon != null) postFixIcon,
              ],
            ),
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        onPrimary: textColor,
        padding: padding,
        primary: colorFill ? color : background,
        shape: showBorder
            ? RoundedRectangleBorder(
                side: BorderSide(color: color!),
                borderRadius: BorderRadius.circular(buttonRadius),
              )
            : null,
        textStyle: textStyle == null ? TextStyle(fontSize: 18) : textStyle,
      ),
    ),
  );
}
