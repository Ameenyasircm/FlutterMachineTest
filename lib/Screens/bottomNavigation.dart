import 'package:flutter/material.dart';
import 'package:stockmarket/Constants/my_colors.dart';
import 'package:stockmarket/Screens/BuyStockScreen.dart';
import 'package:stockmarket/Screens/HomeScreen.dart';
import 'package:stockmarket/Screens/marketScreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int selectedIndex= 0;


  var Fragments;
  @override

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screens = [ const HomeScreen(), const MarketScreen(), HomeScreen(),const HomeScreen(),const BuyStockScreen(),];

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
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          // labelBehavior:NavigationDestinationLabelBehavior.alwaysShow,
          // height: 60,

          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xffDDAD5C),

          items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/homeBottom.png',
              height: 35,
              width: 35,
              color: Colors.grey,

            ),
            activeIcon: Image.asset(
              'assets/homeBottom.png',
              height: 35,
              width: 35,
              color:my_orange,
            ),
          label: "",
            backgroundColor:Color(0xAA111111)
        ),

            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/report.png',
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/report.png',
                height: 35,
                width: 35,
                color:my_orange,
              ), label: "",
                backgroundColor:Color(0xAA111111)),

            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/chart.png',
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/chart.png',
                height: 35,
                width: 35,
                color:my_orange,
              ), label: "",
                backgroundColor:Color(0xAA111111)),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Vector.png',
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/Vector.png',
                height: 35,
                width: 35,
                color:my_orange,
              ), label: "",
                backgroundColor:Color(0xAA111111)),

            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/settings.png',
                height: 35,
                width: 35,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/settings.png',
                height: 35,
                width: 35,
                color:my_orange,
              ), label: "",
                backgroundColor:Color(0xAA111111)),
          ],
        ),

      ),
    );
  }
}
