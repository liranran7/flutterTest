import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_hello/models/AppInfo.dart';
import 'package:flutter_app_hello/models/AppItemInfo.dart';

import '../widgets/CategoryIcon.dart';

class MoreServicePage extends StatefulWidget {
  @override
  MoreServiceState createState() => MoreServiceState();
}

class MoreServiceState extends State<MoreServicePage> {
  MoreServiceState() {

  }
  Map<String, List<AppItemInfo>> groupMaps;

  @override
  initStates(){
    getIcon();
  }

  getIcon() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.post("http://124.42.103.203:8300/api/homepage",
        data: {"channel": "18", "module": 7, "version": "Android 2.0.9"});
    AppInfo appInfo = AppInfo.fromJson(response.data);
    if (appInfo != null) {
      if (appInfo.code == 200) {
        List<AppItemInfo> iconLists = appInfo.data;
        if (iconLists != null && iconLists.length > 0) {
          //箭头函数写for循环
          iconLists.forEach((element) {
            if (groupMaps == null) {
              groupMaps = new Map<String, List<AppItemInfo>>();
              List<AppItemInfo> iconList = new List<AppItemInfo>();
              iconList.add(element);
              //map集合
              groupMaps[element.groupName] = iconList;
            } else {
              if (groupMaps.containsKey(element.groupName)) {
                groupMaps[element.groupName].add(element);
              } else {
                List<AppItemInfo> iconList = new List<AppItemInfo>();
                iconList.add(element);
                groupMaps[element.groupName] = iconList;
              }
            }
          });
        }
        setState(() {
          print(groupMaps);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back,color: Colors.blue,),
        backgroundColor:Colors.white,
        title: Text("更多服务",style: TextStyle(color: Colors.blue,fontSize: 20),),
        centerTitle: true,
      ),
        body: Container(
          color: Color(0xfff2f7fc),
          child: ListView.builder(
            shrinkWrap: true,
            // itemCount: groupMaps==null||groupMaps.length==0?0:groupMaps.length,
            itemCount: groupMaps?.length ?? 0, //?.判空  ??判断前面是否是空，如果是空的话取后面的值，否则取前面
            itemBuilder: (BuildContext context, int index) {
              return CategoryIcon(categoryList: groupMaps[groupMaps.keys.elementAt(index)]);
            },
          ),
        ));
  }
}

class Test {
  test() {
    int age = 11;
    String value = "";
    funA(age, value);
    funB(
      age: age,
    );
    funC(age, value, value);
  }

  funA(int age, String value) {}
//命名参数
  funB({int age, String value}) {}
//可选参数
  funC(int age, String value, [String name]) {}
}
