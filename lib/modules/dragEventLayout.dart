import 'package:flutter/material.dart';

class DragEventLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DragEventLayout();
  }
}

class _DragEventLayout extends State<DragEventLayout> {
  double _left = 0;
  double _top = 0;
  GlobalKey _globalKey = GlobalKey();

  double stackWidth = 0;
  double stackHeight = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      stackWidth = _globalKey.currentContext!.size!.width;
      stackHeight = _globalKey.currentContext!.size!.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('可拖拽'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              setState(() {
                if (_left > stackWidth - 100) {
                  _left = stackWidth - 100;
                } else {
                  _left += details.delta.dx;
                }

                if (_top > stackHeight - 100) {
                  _top = stackHeight - 100;
                } else {
                  _top += details.delta.dy;
                }
              });
              print('$stackHeight' + '/$stackWidth');
            },
            child: Stack(
              key: _globalKey,
              children: [
                Positioned(
                    left: _left < 0 ? 0 : _left,
                    top: _top < 0 ? 0 : _top,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ))
              ],
            ),
          )),
    );
  }
}
