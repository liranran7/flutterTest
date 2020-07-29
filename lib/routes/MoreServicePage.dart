import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_hello/models/AppInfo.dart';
import 'package:flutter_app_hello/models/AppItemInfo.dart';
class MoreServicePage extends StatelessWidget{
  Map<String,List<AppItemInfo>> groupMaps;

  @override
  StatelessElement createElement() {
    getIcon();
    return super.createElement();

  }
   getIcon() async{
     Response response;
     Dio dio = new Dio();
     response = await dio.post("http://124.42.103.203:8300/api/homepage", data: {"channel":"18","module":7,"version":"Android 2.0.9"});
     AppInfo appInfo=AppInfo.fromJson(response.data);
     if(appInfo!=null){
       if(appInfo.code==200){
         List<AppItemInfo> iconLists=appInfo.data;
         if(iconLists!=null&&iconLists.length>0){
           //箭头函数写for循环
           iconLists.forEach((element) {
             if(groupMaps==null){
               groupMaps=new Map<String,List<AppItemInfo>>();
               List<AppItemInfo> iconList=new List<AppItemInfo>();
               iconList.add(element);
//               groupMaps.put(MapEntry(element.groupName,iconList));
             }

           });
         }
       }
     }
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return null;
        },
      )
    );
  }
}
