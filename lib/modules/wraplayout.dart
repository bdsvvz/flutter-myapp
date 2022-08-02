import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WrapLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const wraps = ["one", "two", "three", "four", "five", "six", "seven"];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('warp布局'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
            child: Wrap(
                textDirection: TextDirection.ltr,
                children: List<Widget>.generate(
                    wraps.length,
                    (index) => Chip(
                          label: Text(wraps[index]),
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 18),
                          backgroundColor: Colors.blue,
                          deleteIcon: Icon(Icons.clear),
                          deleteIconColor: Colors.white,
                          labelPadding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                          onDeleted: () {
                            Fluttertoast.showToast(
                                msg: wraps[index],
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black45,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          },
                        )))),
      ),
    );
  }
}
