import 'package:flutter/material.dart';

class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Card组件1'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            child: Image.network(
                "http://img.netbian.com/file/20121022/e93d4c283f43b841cc54c7529593ac7e.jpg"),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(4,4),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          )),
    );
  }
}
