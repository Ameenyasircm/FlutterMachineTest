import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyStockScreen extends StatelessWidget {
  const BuyStockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xAA111111),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        centerTitle: true,
        title: Text(
          'Buy Stock',
          style: TextStyle(
            color: Color(0xFFF2F2F2),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right: 8.0),
           child: CircleAvatar(
             radius: 20,
             backgroundColor: Colors.white,
             child: Center(child: Icon(Icons.question_mark,color: Colors.black,),),
           ),
         )
        ],
      ),
    );
  }
}
