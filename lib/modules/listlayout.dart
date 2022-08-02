import 'package:flutter/material.dart';

class ListLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colors = [Colors.blue, Colors.red, Colors.green];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('list布局'),
          centerTitle: true,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      height: 50,
                      color: colors[index % 3],
                      child: Text("我是第$index个item"),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 20,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
