import 'package:figmaassign/utils/color.dart';
import 'package:flutter/cupertino.dart';

ticketBooking(image,title) {
  return Column(
    children: [
      Container(
        height: 60,
        width: 59,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConstant.ticketBooking,
          image: DecorationImage(image: AssetImage(image))
        ),
      ),
      const SizedBox(height: 6,),
      Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: ColorConstant.white),),
    ],
  );
}
