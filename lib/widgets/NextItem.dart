import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NextItem extends StatelessWidget {
  final itemName;
  String versionName;
  bool isShowLine = false;
  bool isShowBtn = false;

  NextItem(
      {Key key, this.itemName, this.versionName = "", this.isShowLine = false, this.isShowBtn = false, this.openNew})
      :super(key: key);

//  final ValueChanged openNew;、ValueChanged是干啥的
  final openNew;
  bool _lights = false;

  openNewPage() {
    openNew();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: new Container( //为什么加container 是因为想添加背景颜色
          alignment: Alignment.center,
          color: Colors.white,
          height: 40,
          padding: EdgeInsets.only(left: 10, right: 10),
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Text(
                      '$itemName'
                  ),
                  Expanded(
                    flex: 1,
                    child: new Text(""),
                  ),
                  Text(
                      '$versionName'
                  ),
                  Visibility(
                    visible: isShowBtn,
                    child: CupertinoSwitch(
                      value: _lights,
                      onChanged: (bool value) {

                      },
                    ),
                  ),
                  Visibility(
                    visible: !isShowBtn,
                    child: new Icon(
                      Icons.arrow_forward_ios, color: Colors.green,),
                  )

                ],
              ),
              Offstage(
                offstage: !isShowLine, //该值为true的时候隐藏
                child: new Container(
                    height: 1,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 20),
                    child: new Container(
                      color: const Color(0xffededed),
                    )
                ),

              ),

            ],
          )


      ),
      onTap: openNewPage,
    );
  }

}
