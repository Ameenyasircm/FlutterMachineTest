import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockmarket/Providers/MainProvider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor:  Colors.transparent,
          title:    Row(
            children: [
              Image.asset('assets/Icon.png',scale:2.5,),
              SizedBox(width: 5,),
              Text(
                'Investo',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                  fontSize: 24,
                  fontFamily: 'Manjari',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2,
                ),),
            ],
          ),
          actions: [
            Image.asset('assets/notifyIcon.png',scale: 3,),
            Image.asset('assets/search.png',scale: 3,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              'Your net worth',
              style: TextStyle(
                color: Color(0xFF7E7E7E),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),),
                SizedBox(height: height*0.015,),
                SizedBox(width: width*.9,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          SizedBox(width: 5,),
                          Image.asset('assets/dollur.png',scale: 2.5,),

                          RichText(
                            textAlign: TextAlign.left,
                            text:const TextSpan(
                              children: [
                                TextSpan(
                                  text: "15,901",
                                  style: TextStyle(
                                    color: Color(0xFFF2F2F2),
                                    fontSize: 35,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),),
                                TextSpan(
                                  text: ".24",
                                  style: TextStyle(
                                    color: Color(0xFF686868),
                                    fontSize: 35,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/upArrow.png',scale: 2.5,),
                              SizedBox(width: 5,),
                              RichText(

                                textAlign: TextAlign.left,
                                text:const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "0.42",
                                      style: TextStyle(
                                        color: Color(0xFF5ECCA3),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                      ),),
                                    TextSpan(
                                      text: "%",
                                      style: TextStyle(
                                        color: Color(0xFF5ECCA3),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                      ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/dollur.png',scale: 2.5,),
                              SizedBox(width: 5,),
                              Text(
                                '66.25',
                                style: TextStyle(
                                  color: Color(0xFF7E7E7E),
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: height*0.02,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width*0.4,
                      height: 52,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/upload.png',scale: 2,),
                          Text(
                            'Deposit',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: width*.4,
                      height: 52,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF7E7E7E)),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/withdrawIcon.png',scale: 2,),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                              color: Color(0xFFF2F2F2),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),

                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: height*0.02,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My portfolio',
                      style: TextStyle(
                        color: Color(0xFF7E7E7E),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF027CDF),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.50,
                      ),
                    )
                  ],
                ),
    Consumer<MainProvider>(
      builder: (context,value,child) {
        return Container(
            height: 200,
            width: width*0.9,
            color: Colors.transparent,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

            padding: EdgeInsets.only(left: 5,right: 5,top: 10),
            physics: ScrollPhysics(),
            itemCount: value.portfolioList.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
            var item = value.portfolioList[index];

            return Padding(
              padding: const EdgeInsets.only(right: 8.0,bottom: 10,top: 12),
              child: Container(
                height: 100,width: 180,
                decoration: BoxDecoration(color: Color(0xAA111111),
                  border: Border.all(
                    color: Color(0xFF191919)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 5),
                      child: Row
                        (children: [
                Container(
                width: 45,
                  height: 45,
                  decoration: ShapeDecoration(
                        color: Color(0xFF1E1A17),
                        shape: OvalBorder(),),
                            child: Image.asset(item.icon,scale: 2.5,)),
                        SizedBox(width: 5,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name.toUpperCase(),
                              style: TextStyle(
                                color: Color(0xFFF2F2F2),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                             item.description,
                              style: TextStyle(
                                color: Color(0xFF7E7E7E),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(item.assetName,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.amount1,
                            style: TextStyle(
                              color: Color(0xFFF2F2F2),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.50,
                            ),
                          ),
                          Text(
                            item.amount2,
                            style: TextStyle(
                              color: Color(0xFF5ECCA3),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.50,
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
            }),
        );
      }
    ),
                SizedBox(height: height*0.02,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 0),
                  child: SizedBox(
                    width: width*0.9,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trending',
                          style: TextStyle(
                            color: Color(0xFF7E7E7E),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 214),
                        Text(
                          'View market',
                          style: TextStyle(
                            color: Color(0xFF027CDF),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Consumer<MainProvider>(
                    builder: (context,value,child) {
                      return Container(
                        height: height*0.4,
                        color: Colors.transparent,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.only(left: 5,right: 5,top: 10),
                            physics: ScrollPhysics(),
                            itemCount: value.trendingList.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              var item = value.trendingList[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 18.0),
                                child: Container(width:100,
                                  // height: 50,
                                  decoration: BoxDecoration(
                                      // color: Color(0xAA111111),

                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(width: width*0.4,
                                        child: Row(
                                          children: [
                                            Container(
                                                width: 45,
                                                height: 45,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF1E1A17),
                                                  shape: OvalBorder(),),
                                                child: Image.asset(item.icon,scale: 2.5,)),
                                            SizedBox(width: 10,),
                                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(item.name, style: TextStyle(
                                                  color: Color(0xFFF2F2F2),
                                                  fontSize: 17,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w500,
                                                ),),
                                                Text(item.description, style: TextStyle(
                                                  color: Color(0xFF7E7E7E),
                                                  fontSize: 13,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400,
                                                ),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: width*0.07,),

                                      SizedBox(width:100,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(item.assetName,scale: 4.5,),
                                        ),
                                      ),  SizedBox(width: width*0.02,),
                                      SizedBox(width:50,
                                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(item.amount1, style: TextStyle(
                                              color: Color(0xFFF2F2F2),
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                            ),),
                                            Text(item.amount2,    style: TextStyle(
                                              color: Color(0xFF5ECCA3),
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.50,
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );

                            }),);}),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
