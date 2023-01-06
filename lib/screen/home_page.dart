import 'package:figmaassign/utils/color.dart';
import 'package:figmaassign/widget/homeWidget.dart';
import 'package:flutter/material.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 7,),
                  Container(
                    width: 40,
                    // color: ColorConstant.white,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Container(
                    width: 220,
                    // color: ColorConstant.white,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      style: TextStyle(color: ColorConstant.white),
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Users,ID's etc",
                        suffixIcon: Icon(
                          Icons.search,
                          color: ColorConstant.white,
                        ),
                        hintStyle: TextStyle(
                          color: ColorConstant.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  
                  Container(
                    height: double.infinity,
                    width: 40,
                    decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      border: Border.all(width: 1, color: ColorConstant.grey),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Icon(
                      Icons.notifications_none_outlined,
                      size: 40,
                      color: ColorConstant.white,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                ],
              ),
            ),

            //  TabBAr View

            DefaultTabController(
              length: 4,
              initialIndex: 0,
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: TabBar(
                    indicatorColor: ColorConstant.grey,
                    labelColor: ColorConstant.white,
                    unselectedLabelColor: ColorConstant.grey,
                    tabs: const [
                      Tab(
                          child: Text(
                        'Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      Tab(
                          child: Text(
                        'Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      Tab(
                          child: Text(
                        'Offers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                      Tab(
                          child: Text(
                        'Rewards',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      )),
                    ],
                  ),
                ),
              ]),
            ),
           const Expanded(
            child: 
            HomeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
