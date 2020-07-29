import 'package:flutter/material.dart';
import 'CommonIcon.dart';

class CategoryIcon extends StatelessWidget {
  CategoryIcon({Key key, this.categoryList});

  final List<Object> categoryList;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("imgs/icon_title_bg.png"),),
              ),
              child: Text(""),
            ),
            GridView.builder
              (gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return CommonIcon();
                }),

          ],
        )
    );
  }
}
