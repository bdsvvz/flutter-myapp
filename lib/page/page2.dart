 import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  List<String> newList = ["标题", "标题", "标题", "标题", "标题", "标题"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                constraints: BoxConstraints(minHeight: 50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
            
                  children: <Widget>[
                    Text('小天使：',
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    Text('陪你去看流星雨',
                        style: TextStyle(color: Colors.white, fontSize: 14))
                  ],
                ),
              )
            ],
          );
        },
        itemCount: newList.length,
      ),
    );
  }
}
