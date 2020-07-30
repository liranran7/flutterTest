import 'package:flutter/material.dart';
import '../models/AppItemInfo.dart';
import 'CommonIcon.dart';
import 'package:flutter_app_hello/models/AppItemInfo.dart';
import 'package:fluttertoast/fluttertoast.dart';


class CategoryIcon extends StatelessWidget {
  CategoryIcon({Key key, this.categoryList});

  final List<AppItemInfo> categoryList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width:90,
              height: 24,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left:10,bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("imgs/icon_title_bg.png")),
              ),
              child: Text(categoryList[0].groupName,style: new TextStyle(color: Colors.white,fontSize: 14),),
            ),
         Container(
           child:    GridView.builder(
               shrinkWrap: true, //当ListView嵌套GridView 里面的GridView不能撑起来 需要加这个参数
               physics: NeverScrollableScrollPhysics(),//禁止GridView滑动
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.0),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return CommonIcon(icon:categoryList[index].iconUrl,name:categoryList[index].name,callBack: (){
                    Fluttertoast.showToast(
                        msg: categoryList[index].name,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },);
                }),)

          ],
        )
    );
  }
}
