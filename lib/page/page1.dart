import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/cardlayout.dart';
import '../modules/customlayout.dart';
import '../modules/flexlayout.dart';
import '../modules/gridviewlayout.dart';
import '../modules/indexstacklayout.dart';
import '../modules/listlayout.dart';
import '../modules/stacklayout.dart';
import '../modules/wraplayout.dart';
import '../modules/dragEventLayout.dart';
import '../modules/widgetviewlayout.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 0.7,
      ),
      children: [
        _MyCard(card_content: "flex布局（线性布局）", onTapPage: FlexLayout()),
        _MyCard(card_content: "wrap布局（流式布局）", onTapPage: WrapLayout()),
        _MyCard(card_content: "stack布局（层叠布局）", onTapPage: StackLayout()),
        _MyCard(card_content: "widget（控件）", onTapPage: WidgetViewLayout()),
        _MyCard(card_content: "Card组件", onTapPage: CardLayout()),
        _MyCard(card_content: "自定义布局", onTapPage: CustomLayout()),
        _MyCard(card_content: "list构造器", onTapPage: ListLayout()),
        _MyCard(card_content: "网格布局", onTapPage: GridViewLayout()),
        _MyCard(card_content: "栈索引布局", onTapPage: IndexStackLayout()),
        _MyCard(card_content: "只有拖拽事件", onTapPage: DragEventLayout()),
      ],
    ));
  }
}

class _MyCard extends StatelessWidget {
  const _MyCard({required this.card_content, required this.onTapPage});

  final String card_content; //定义接收参数
  final Widget onTapPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: () {
            // 使用 Navigator 跳转页面
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return onTapPage;
            }));
          },
          child: Card(
              color: Color.fromARGB(250, 255, 255, 255),
              //设置阴影
              elevation: 15.0,
              margin: EdgeInsets.all(5),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(card_content,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Color.fromARGB(250, 13, 166, 248),
                      Color.fromARGB(250, 0, 238, 135),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset.infinite,
                      )
                    ]),
              ))),
    );
  }
}
