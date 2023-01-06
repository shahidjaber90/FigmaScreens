import 'package:figmaassign/classCRUD.dart';
import 'package:figmaassign/screen/home_page.dart';
import 'package:figmaassign/utils/color.dart';
import 'package:figmaassign/utils/text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController countryCode = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();

  @override
  void initState() {
    countryCode.text = '+92';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/bc.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 25),
                  child: Column(
                    children: [
                      Text(
                        TextConstant.loginText,
                        style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 95, top: 80),
                            child: Positioned(
                                top: 24,
                                left: 40,
                                child: Image.asset('assets/image20.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Positioned(
                                child: Image.asset('assets/image25.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 115),
                            child: Positioned(
                                child: Image.asset('assets/image15.png')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 55,
              width: 290,
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: 36,
                      child: TextField(
                        // controller: countryCode,
                        readOnly: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '+92',
                          hintStyle: TextStyle(
                            color: ColorConstant.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: TextField(
                        style: TextStyle(
                          letterSpacing: 0.5,
                            color: ColorConstant.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,                            
                        ),
                    keyboardType: TextInputType.number,
                    controller: mobileNumber,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ))
                ],
              ),
            ),
         
        const SizedBox(height: 20,),
        SizedBox(
          height: 55,
          width: 290,
          child: ElevatedButton(onPressed: (){
            if(mobileNumber.text == '3121186020' ){
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePAge()),
          );
            }else {


               showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Login Failed"),
                content:const Text('Please Type Valid Mobile Number'),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              );
            }
 );



              
            }
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            )
          ),
          child:const Text('Verify',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
