import 'package:figmaassign/utils/color.dart';
import 'package:figmaassign/utils/text.dart';
import 'package:flutter/material.dart';


textFieldFunction(control,icon) {
  return TextField(
    controller: control,
    cursorRadius: const Radius.circular(20),
    decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: ColorConstant.white,
        filled: true,
        labelText: TextConstant.emailText,
        prefixIcon: icon,)
  );
}
