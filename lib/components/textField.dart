import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/colors.dart';
import 'package:lottery_ticket/spec/properties.dart';

Widget textFormField({
  void Function()? function,
  @required String? hintText,
  String? labelText,
  String? validateMsg,
  IconData? icon,
  IconData? prefixIcon,
  Color iconColor = PRIMARYCOLOR,
  Color prefixIconColor = PRIMARYCOLOR,
  Color? cursorColor,
  Color textColor = PRIMARYCOLOR,
  Color labelColor = PRIMARYCOLOR,
  Color backgroundColor = WHITE,
  @required TextEditingController? controller,
  bool validate = true,
  bool suggestion = false,
  TextInputType inputType = TextInputType.text,
  int maxLine = 1,
  int minLine = 1,
  bool validateEmail = false,
  double? width,
  enable = true,
  bool removeBorder = false,
  void Function()? onIconTap,
  TextInputAction? inputAction,
  void Function()? onEditingComplete,
  void Function(String text)? onTextChange,
  @required FocusNode? focusNode,
  bool readOnly = false,
  bool showBorderRound = false,
  Color borderColor = PRIMARYCOLOR,
  TextCapitalization textCapitalization = TextCapitalization.sentences,
}) {
  return Container(
    width: width,
    child: TextFormField(
      onTap: function,
      readOnly: readOnly,
      enableInteractiveSelection: true,
      enabled: enable,
      enableSuggestions: suggestion,
      keyboardType: inputType,
      controller: controller,
      minLines: minLine,
      maxLines: maxLine,
      focusNode: focusNode,
      autofocus: false,
      textInputAction: inputAction,
      cursorColor: cursorColor,
      textCapitalization: textCapitalization,
      style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
      onEditingComplete: () {
        print(controller!.text);
        focusNode!.unfocus();
        // onEditingComplete();
      },
      onChanged: onTextChange == null ? null : (text) => onTextChange(text),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: ASHDEEP),
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor),
        filled: true,
        fillColor: backgroundColor,
        suffixIcon: icon == null
            ? null
            : GestureDetector(
                onTap: onIconTap,
                child: Icon(icon, color: iconColor),
              ),
        prefixIcon: prefixIcon == null
            ? null
            : Icon(prefixIcon, color: prefixIconColor),
        enabledBorder: removeBorder
            ? InputBorder.none
            : showBorderRound
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  ),
        disabledBorder: removeBorder
            ? InputBorder.none
            : showBorderRound
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  ),
        focusedBorder: removeBorder
            ? InputBorder.none
            : showBorderRound
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  ),
        border: removeBorder
            ? InputBorder.none
            : showBorderRound
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: borderColor, width: 1),
                  ),
        errorStyle: TextStyle(
          color: Colors.red,
        ),
      ),
      validator: (value) {
        RegExp regex = new RegExp(PATTERN);
        if (value!.isEmpty && validate) {
          return validateMsg;
        } else if (validateEmail && !regex.hasMatch(value)) {
          return "Please enter a valid email address";
        }
        return null;
      },
    ),
  );
}
