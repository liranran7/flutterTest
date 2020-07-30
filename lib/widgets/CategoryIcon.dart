import 'package:flutter/material.dart';
import '../models/AppItemInfo.dart';
import 'CommonIcon.dart';
import 'package:flutter_app_hello/models/AppItemInfo.dart';

import 'CommonIcon.dart';

class CategoryIcon extends StatelessWidget {
  CategoryIcon({Key key, this.categoryList});

  final List<AppItemInfo> categoryList;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Container(
                width:120,
                height:32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("imgs/icon_title_bg.png")),
              ),
              child: Text("aaaaddd"),
            ),
         Container(
           
           child:    GridView.builder( 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.0),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return CommonIcon(icon:categoryList[index].iconUrl,name:categoryList[index].name);
                }),)

          ],
        )
    );
  }
}
