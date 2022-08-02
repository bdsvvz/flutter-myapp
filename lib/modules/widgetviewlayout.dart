import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("widget控件"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Stack(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.topLeft,
                    width: 200,
                    height: 100,
                    color: Colors.lightGreen,
                    child: Text(
                      '文本',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.topLeft,
                  width: 200,
                  height: 100,
                  color: Colors.lightBlue,
                  child: Text(
                    '文本',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    alignment: Alignment.topLeft,
                    width: 200,
                    height: 100,
                    color: Colors.lightBlue,
                    child: Text(
                      '文本',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    width: 200,
                    height: 100,
                    color: Colors.greenAccent,
                    child: Text(
                      '文本',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    //控制整个容器的margin
                    margin: EdgeInsets.all(20),
                    width: 200,
                    height: 100,
                    color: Colors.greenAccent,
                    child: Text(
                      '文本',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    //控制整个容器的margin
                    margin: EdgeInsets.all(20),
                    width: 200,
                    height: 100,
                    color: Colors.amberAccent,
                    child: Text(
                      '文本',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          )),
    );
  }
}
