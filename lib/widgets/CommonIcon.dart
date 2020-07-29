import 'package:flutter/material.dart';

class CommonIcon extends StatelessWidget {
  CommonIcon({Key key, this.icon, this.name})   :super(key: key);

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        //Image的显示模式
        Image.network(icon, width: 36,),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
          name, style: TextStyle(color: Color(0xff4D5560), fontSize: 12),),),

      ],
    );
  }
}
