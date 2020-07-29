import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_hello/models/AppInfo.dart';
class MoreServicePage extends StatelessWidget{
  AppInfo appInfo;
  @override
  StatelessElement createElement() {
    getIcon();
    return super.createElement();

  }
   getIcon() async{
     Response response;
     Dio dio = new Dio();
     response = await dio.post("http://124.42.103.203:8300/api/homepage", data: {"channel":"18","module":7,"version":"Android 2.0.9"});
     appInfo=AppInfo.fromJson(response.data);
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
