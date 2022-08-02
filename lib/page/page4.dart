import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 50,top: 50),
      // padding: EdgeInsets.only(left: 10,top: 10),
      child: Text("这是一个flutter应用"),
      decoration: BoxDecoration(
        color: Colors.blue,
        // border: Border.all(
        //   color: Colors.red,
        //   width: 10.0,
        // ),
        // borderRadius: BorderRadius.circular(5),

      ),
      alignment: Alignment.center,
      // width: 300,
      // height: 400,
    );
  }
} 
