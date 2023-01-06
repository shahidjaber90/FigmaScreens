import 'package:figmaassign/utils/color.dart';
import 'package:figmaassign/widget/booking_widget.dart';
import 'package:figmaassign/widget/card_widget.dart';
import 'package:figmaassign/widget/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'M',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: ColorConstant.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'oney Transfer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorConstant.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                          color: ColorConstant.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 4, left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'More',
                              style: TextStyle(color: ColorConstant.lightGrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: ColorConstant.lightGrey,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      cardFunction(
                          'assets/1.png',
                          'Scan QR Code',
                          ColorConstant.scanlight,
                          ColorConstant.scanDark,
                          context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      cardFunction(
                          'assets/2.png',
                          'Send to Contact',
                          ColorConstant.contactlight,
                          ColorConstant.contactDark,
                          context),
                    ],
                  ),
                ),
              ),
      
              // second line
      
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      cardFunction(
                          'assets/3.png',
                          'Send to Bank',
                          ColorConstant.banklight,
                          ColorConstant.bankDark,
                          context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      cardFunction(
                          'assets/4.png',
                          'Self Transfer',
                          ColorConstant.transferlight,
                          ColorConstant.transferDark,
                          context),
                    ],
                  ),
                ),
              ),
      
              // second card container
      
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 14, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'R',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: ColorConstant.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'echarge & Bill Payments',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: ColorConstant.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                          color: ColorConstant.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 4, left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'More',
                              style: TextStyle(color: ColorConstant.lightGrey),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: ColorConstant.lightGrey,
                              size: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      cardFunction(
                          'assets/5.png',
                          'MobileRecharge',
                          ColorConstant.mobilelight,
                          ColorConstant.mobileDark,
                          context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      cardFunction(
                          'assets/6.png',
                          'Electricity Bill',
                          ColorConstant.billlight,
                          ColorConstant.billDark,
                          context),
                    ],
                  ),
                ),
              ),
      
              // second line
      
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      cardFunction(
                          'assets/7.png',
                          'DTH Recharge',
                          ColorConstant.rechargelight,
                          ColorConstant.rechargeDark,
                          context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      cardFunction(
                          'assets/8.png',
                          'Postpaid bill',
                          ColorConstant.postPaidlight,
                          ColorConstant.postPaidDark,
                          context),
                    ],
                  ),
                ),
              ),
      
              Padding(
                  padding: const EdgeInsets.only(top: 8, left: 14, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'T',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'icket Booking',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ])),
              const SizedBox(
                height: 8,
              ),
      
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ticketBooking('assets/movie.png','Movies'),
                    ticketBooking('assets/train.png','Trains'),
                    ticketBooking('assets/bus.png','Bus'),
                    ticketBooking('assets/airplane.png','Flights'),
                    ticketBooking('assets/car.png','Car'),
                  ],
                ),
              ),
      
              Padding(
                  padding: const EdgeInsets.only(top: 8, left: 14, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'M',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ore Services',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ])),
              const SizedBox(
                height: 8,
              ),
      
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ticketBooking('assets/invest.png','Invest'),
                    ticketBooking('assets/location.png','Loans'),
                    ticketBooking('assets/Heart.png','Insurance'),
                    ticketBooking('assets/fasting.png','Fastag'),
                    const SizedBox(
                      height: 60,
                      width: 59,
                    ),
                  ],
                ),
              ),
      
              const SizedBox(height: 2,),
      
              Stack(
                children: [
      
                Padding(
                  padding: const EdgeInsets.only( left: 14, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'R',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ecent Transactions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ])),
      
              
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14,right: 14),
                      child: Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          circleImage('assets/r1.png'),
                          circleImage('assets/r2.png'),
                          circleImage('assets/r3.png'),
                          circleImage('assets/r4.png'),
                          circleImage('assets/r5.png'),
                        ],
                                  ),
                      ),
                    ),
                  ),
                Positioned(
                  left: 215,
                  bottom: 95,
                  child: Container(
                    width: 114,
                    height: 45,
                    decoration: BoxDecoration(
                      color: ColorConstant.moneyButton,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Text('Recieve Money',textAlign: TextAlign.center,style: TextStyle(color: ColorConstant.white),)),
                  ),
                )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
