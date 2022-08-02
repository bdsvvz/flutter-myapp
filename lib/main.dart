import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './page/page1.dart';
import './page/page2.dart';
import './page/page3.dart';
import './page/page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '测试'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _current_index = 0; //记录当前选择的是哪一个
  final List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];
  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.blue,
        ),
        body: pages[_current_index],
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        drawer: Drawer(elevation: 1, child: DrawerLeft()),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.blue[300],
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: _current_index,
            onTap: (int index) {
              //点击事件
              setState(() {
                //修改状态，会自动刷新Widget
                this._current_index = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
              BottomNavigationBarItem(icon: Icon(Icons.email), label: '通讯录'),
              BottomNavigationBarItem(icon: Icon(Icons.explore), label: '发现'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: '我的'),
            ]));
  }
}

//左侧抽屉
class DrawerLeft extends StatelessWidget {
  final strs = <String>[
    "list1",
    "list2",
    "list3",
    "list4",
  ];

  void _drawerItemClick(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black45,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: SizedBox(
                width: 60.0,
                height: 60.0,
                child: CircleAvatar(
                  child: Text('R'),
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.greenAccent),
          ),
          ListTile(
            leading: Icon(Icons.home),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('首页'),
            onTap: () => _drawerItemClick('首页'),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            leading: Icon(Icons.send),
            title: Text('消息'),
            onTap: () => _drawerItemClick('消息'),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            leading: Icon(Icons.settings),
            title: Text('设置'),
            onTap: () => _drawerItemClick('设置'),
          ),
        ],
      ),
    );
  }


}
