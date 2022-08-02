import 'package:flutter/material.dart';

class GridViewLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const gridColors = [Colors.green, Colors.blue, Colors.red, Colors.yellow];
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView布局'),
          centerTitle: true,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          color: Colors.white,
          child: GridView.builder(
              itemCount: 100,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                //网格宽高比
                // childAspectRatio: 5,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: gridColors[index % 4],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  alignment: Alignment.center,
                  child: Text(
                    '$index',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
