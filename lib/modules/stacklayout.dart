import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack布局'),
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
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  "讲",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
