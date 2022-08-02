import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container控件'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
            alignment: Alignment.topLeft,
            width: 200,
            height: 200 * 0.618,
            color: Colors.red.withAlpha(88),
          ),
        ),
      ),
    );
  }
}

