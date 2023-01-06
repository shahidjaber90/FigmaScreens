import 'package:figmaassign/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



cardFunction(logo,text, color1, color2,context) {
  return Container(
    height: 43,
    width: MediaQuery.of(context).size.width * 0.43,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: color1,
    ),
    child: Row(
      children: [
        Container(
          height: 43,
          width: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: color2,
            image: DecorationImage(image: AssetImage(logo))
          ),
        ),
        
        SizedBox(
          width: 114,
            child: Text(
          text,textAlign: TextAlign.center,
          style: TextStyle(
              color: ColorConstant.white,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        ),
      ],
    ),
  );
}
