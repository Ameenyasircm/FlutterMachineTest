import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockmarket/Providers/MainProvider.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var width = queryData.size.width;
    var height = queryData.size.height;
    return Scaffold(
      backgroundColor: Color(0xAA111111),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Market',
          style: TextStyle(
            color: Color(0xFFF2F2F2),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Image.asset(
            'assets/search.png',
            scale: 3,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Watchlist',
                    style: TextStyle(
                      color: Color(0xFF7E7E7E),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Edit list',
                    style: TextStyle(
                      color: Color(0xFF027CDF),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Consumer<MainProvider>(builder: (context, value, child) {
                return Container(
                  height: 200,
                  width: width * 0.9,
                  color: Colors.transparent,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                      physics: ScrollPhysics(),
                      itemCount: value.portfolioList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        var item = value.portfolioList[index];

                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, bottom: 10, top: 12),
                          child: Container(
                            height: 100,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Color(0xAA111111),
                                border: Border.all(color: Color(0xFF191919)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, left: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 45,
                                          height: 45,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF1E1A17),
                                            shape: OvalBorder(),
                                          ),
                                          child: Image.asset(
                                            item.icon,
                                            scale: 2.5,
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    item.assetName,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, right: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
              }),
              Container(
                width: width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFF1A1A1A),
                ),
                child: Consumer<MainProvider>(builder: (context, value, child) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 15, right: 5, top: 10,),
                      physics: ScrollPhysics(),
                      itemCount: value.TabBarModelList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        var item = value.TabBarModelList[index];

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0,right: 10,left: 5),
                          child: InkWell(onTap: (){
                            value.selctionFun(index,item.name);
                          },
                            child: Container(width: width*0.25,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color:item.value?Colors.black: Color(0xFF1A1A1A),
                              ),
                              child: Center(
                                child: Text(item.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),),
                              ),
                            ),
                          ),
                        );
                      });
                }),
              ),
              SizedBox(height: height*0.05,),
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

                          }),);})
            ],
          ),
        ),
      ),
    );
  }
}
