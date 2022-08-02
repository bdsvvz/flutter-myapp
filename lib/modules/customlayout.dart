import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomLayoutPage();
  }
}

class SelectLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectLayoutPage();
  }
}

class _CustomLayoutPage extends State<CustomLayout> {
  double _sliderValue = 0;
  bool _isChecked = true;
  bool _isSwitch = true;
  int _gruopValue = 0;
  bool _isSing = false;
  bool _isDance = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('自定义布局'),
            centerTitle: true,
            leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                height: 65,
                alignment: Alignment.center,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.wifi,
                        color: Colors.blue,
                      ),
                      width: 50,
                    ),
                    Container(
                        child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "网络和互联网",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            "WLAN、移动网络、流量使用和热点",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                    )),
                    Container(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      width: 50,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 65,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "设置1",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Checkbox(
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = !_isChecked;
                            });
                          },
                        ),
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 65,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "设置2",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Switch(
                            value: _isSwitch,
                            onChanged: (val) {
                              setState(() {
                                _isSwitch = !_isSwitch;
                              });
                            })
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 65,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "音量",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Slider(
                          value: _sliderValue,
                          onChanged: (val) {
                            setState(() {
                              this._sliderValue = val;
                            });
                          },
                          min: 0,
                          max: 100,
                        )
                      ],
                    ),
                  )),
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: SelectLayout()),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "性别:",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      "男",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Radio(
                      value: 1,
                      groupValue: _gruopValue,
                      onChanged: (val) {
                        setState(() {
                          _gruopValue = val as int;
                        });
                      },
                    ),
                    Text(
                      "女",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Radio(
                      value: 2,
                      groupValue: _gruopValue,
                      onChanged: (val) {
                        setState(() {
                          _gruopValue = val as int;
                        });
                      },
                    ),
                    Text(
                      "保密",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Radio(
                      value: 3,
                      groupValue: _gruopValue,
                      onChanged: (val) {
                        setState(() {
                          _gruopValue = val as int;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    SelectableText(
                      '这是一条可以复制的文本',
                      autofocus: true,
                      showCursor: true,
                      textWidthBasis: TextWidthBasis.parent,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "兴趣:",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Text(
                      "唱歌",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Checkbox(
                        value: _isSing,
                        onChanged: (val) {
                          setState(() {
                            _isSing = val as bool;
                          });
                        }),
                    Text(
                      "跳舞",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Checkbox(
                        value: _isDance,
                        onChanged: (val) {
                          setState(() {
                            _isDance = val as bool;
                          });
                        })
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class _SelectLayoutPage extends State<SelectLayout> {
  bool _isShow = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "主标题",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Visibility(
            visible: _isShow,
            child: Text(
              "内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1内容1",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          IconButton(
            icon: Icon(
                _isShow ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down),
            onPressed: () {
              setState(() {
                print(_isShow);
                _isShow = !_isShow;
              });
            },
          )
        ],
      ),
    );
  }
}
