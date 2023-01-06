import 'package:flutter/material.dart';

circleImage(image) {
  return Container(
    width: 59,
    height: 60,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image))
    ),
  );
}
