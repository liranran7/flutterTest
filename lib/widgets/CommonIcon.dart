import 'package:flutter/material.dart';
typedef void CallBack ();

class CommonIcon extends StatelessWidget {
  CommonIcon({Key key, this.icon, this.name,this.callBack})   :super(key: key);

  final String icon;
  final String name;
  CallBack callBack;



  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: callBack,
      child: new Column(
        children: <Widget>[
          //Image的显示模式
          Image.network(icon, width: 36,height: 36,),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              name, style: TextStyle(color: Color(0xff4D5560), fontSize: 12),),),

        ],
      ),
    );
  }
}
