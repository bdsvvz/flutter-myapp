import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const bgColors = const [Colors.blue, Colors.green, Colors.yellow];
    return Container(
      color: Colors.grey,
      constraints: BoxConstraints.expand(),
      child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.up,
          children: List<Widget>.generate(
              bgColors.length,
              (index) => Container(
                    width: 100,
                    height: 100,
                    color: bgColors[index],
                    child: Text(
                      "$index",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ))),
    );
  }
}
