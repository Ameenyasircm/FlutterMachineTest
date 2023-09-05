import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockmarket/Constants/my_colors.dart';
import 'package:stockmarket/Constants/my_functions.dart';
import 'package:stockmarket/Screens/bottomNavigation.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var width = queryData.size.width;
    var height = queryData.size.height;
    return Container(
      height: height,
      width: width,
      decoration:   const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            colors: [Color(0xAA111111),Color(0xAA111111), ],

          )
      ),
      child: Scaffold(
        backgroundColor:Colors.transparent,
        body: Container(width: width,
          child: Padding(
            padding: const EdgeInsets.only(left: 19.0,right: 19),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: height*0.3,
                decoration: BoxDecoration(

                    image: DecorationImage(image: AssetImage('assets/bgImage.png'),fit: BoxFit.cover,opacity:0.8,)
                ),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Icon.png',scale:1.5,),
                  Text(
                  'Investo',
                  style: TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 48,
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                  ),),
                ],
              ),
                SizedBox(height: height*0.1,),
                SizedBox(width: width*0.8,
                  child:
                  RichText(
                    textAlign: TextAlign.left,
                    text:const TextSpan(
                      children: [
                        TextSpan(
                            text: "Monitor",
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 35,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),),
                        TextSpan(
                            text: "Your",
                          style: TextStyle(
                            color: Color(0xFF686868),
                            fontSize: 35,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width*0.8,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text:const TextSpan(
                      children: [
                        TextSpan(
                          text: "Portfolio and Track",
                          style: TextStyle(
                            color: Color(0xFF686868),
                            fontSize: 35,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width*0.8,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text:const TextSpan(
                      children: [
                        TextSpan(
                          text: "Market",
                          style: TextStyle(
                            color: Color(0xFF686868),
                            fontSize: 35,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        TextSpan(
                          text: "Trends",
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 35,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height*0.08,),
                SizedBox(
                  width: width*0.85,
                  child: Text(
                    'Join our community of traders and investors to \nshare ideas , startegies, and  insights that can \nhelp you achieve your financial goals',
                    style: TextStyle(
                      color: Color(0xFFF2F2F2),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: height*0.08,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: ShapeDecoration(
                      color: Color(0xFF1E1A17),
                      shape: OvalBorder(),
                    ),
                    child:                 Image.asset('assets/google 2.png',scale:3,),
                  ),
                  Container(
                    width: 52,
                    height: 52,
                    decoration: ShapeDecoration(
                      color: Color(0xFF1E1A17),
                      shape: OvalBorder(),
                    ),child:
                  Image.asset('assets/fb.png',scale:3,),),
                  InkWell(onTap: (){
                    callNextReplacement(BottomNavigationScreen(), context);
                  },
                    child: Container(
                      width: 232,
                      height: 52,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Let’s go',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],),
                SizedBox(height: height*0.015,),
                SizedBox(
                  width: width*0.8,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text:const TextSpan(
                      children: [
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account?',
                          style: TextStyle(
                            color: Color(0xFF758395),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.50,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0xFF758395),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.16,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Color(0xFFF2F2F2),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ]),
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
