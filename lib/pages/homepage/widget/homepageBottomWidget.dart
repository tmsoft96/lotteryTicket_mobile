import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lottery_ticket/spec/colors.dart';

Widget homepageBottomWidget({
  @required void Function()? onTicket,
  @required void Function()? onHome,
  @required void Function()? onAccount,
  @required int? index,
}) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: PRIMARYCOLOR.withOpacity(.9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(
              icon: FeatherIcons.chrome,
              color: index == 0 ? WHITE : TRANSPARENT,
              onPressed: onTicket,
            ),
            _button(
              icon: FeatherIcons.home,
              color: index == 1 ? WHITE : TRANSPARENT,
              onPressed: onHome,
            ),
            _button(
              icon: FeatherIcons.user,
              color: index == 2 ? WHITE : TRANSPARENT,
              onPressed: onAccount,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _button({
  @required IconData? icon,
  @required Color? color,
  @required void Function()? onPressed,
}) {
  return CircleAvatar(
    backgroundColor: color,
    child: IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: color == WHITE ? PRIMARYCOLOR : WHITE),
    ),
  );
}
