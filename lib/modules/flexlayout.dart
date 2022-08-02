import 'package:flutter/material.dart';

class FlexLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const bgColors = [Colors.green, Colors.blue, Colors.red];

    ;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flex布局'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List<Widget>.generate(
                  bgColors.length,
                  (index) => Container(
                        width: 100,
                        height: 100,
                        color: bgColors[index],
                      )),
            )),
      ),
    );
  }
}
