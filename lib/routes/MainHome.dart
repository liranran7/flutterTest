import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainHomeState();
}

class MainHomeState extends State<MainHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Text("首页"),
      bottomNavigationBar: BottomNavigationBar(items:
      <BottomNavigationBarItem>[
        //图片始终忘记注册 颜色总是忘记怎么写
        BottomNavigationBarItem(title: Text("首页"), icon: Image.asset("imgs/home_nor.png",width: 24,height: 24,), activeIcon:Image.asset("imgs/home_press.png",width: 24,height: 24,)),
        BottomNavigationBarItem(title: Text("生活"), icon: Image.asset("imgs/life_nor.png",width: 24,height: 24,),activeIcon: Image.asset("imgs/life_press.png",width: 24,height: 24,)),
        BottomNavigationBarItem(title: Text("服务"),  icon: Image.asset("imgs/service_nor.png",width: 24,height: 24,),activeIcon: Image.asset("imgs/servive_press.png",width: 24,height: 24,)),
        BottomNavigationBarItem(title: Text("我的"),  icon: Image.asset("imgs/my_nor.png",width: 24,height: 24,),activeIcon: Image.asset("imgs/my_press.png",width: 24,height: 24,)),
      ],
        type:BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff2DA5F9),
        unselectedItemColor: Color(0xffDEE4F5),
        selectedFontSize: 11,
        unselectedFontSize:11 ,
      ),

    );
  }
}