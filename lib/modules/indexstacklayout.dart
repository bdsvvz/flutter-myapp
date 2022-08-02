import 'package:flutter/material.dart';

class IndexStackLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexStackLayout();
  }
}

class _IndexStackLayout extends State<IndexStackLayout> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('栈索引布局'),
          centerTitle: true,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: _page,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: Text(
                        '$_page',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Text(
                        '$_page',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: Text(
                        '$_page',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () => onClick(0), icon: Icon(Icons.home)),
                  IconButton(
                      onPressed: () => onClick(1), icon: Icon(Icons.send)),
                  IconButton(
                      onPressed: () => onClick(2), icon: Icon(Icons.message)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void onClick(int index) {
    setState(() {
      _page = index;
    });
  }
}
