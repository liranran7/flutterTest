import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_hello/state/stateManager.dart';
import 'package:flutter_app_hello/state/mutiState.dart';
import  'package:flutter_app_hello/widgets/NextItem.dart';
import 'package:flutter_app_hello/routes/MoreServicePage.dart';

void main() => runApp(MyHomePage());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ClickCountState();
  }

}
class ClickCountState extends State<MyApp>{
  int addCount=0;


  clickCountState(){

    setState(() {
      addCount++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        floatingActionButton: new FloatingActionButton(onPressed: clickCountState,child: new Icon(Icons.add),),
        body: new Center(
          child: new Column(
              mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Text("you have push the button this times"),
              Text('$addCount'),
            ],
          ),
        ),

      ),
    );
  }

}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home:MoreServicePage(),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//  bool  _lights=false;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  void openNewPage(int index){
//
////    Navigator.push(context, MaterialPageRoute(builder: (context) {
////      return new ParentWidgetC();
////    }));
//  print("haha");
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return new MaterialApp(
//      home:Scaffold(
//        appBar: AppBar(
//          // Here we take the value from the MyHomePage object that was created by
//          // the App.build method, and use it to set our appbar title.
//          title: Text('设置',style: new TextStyle(color: Colors.black),),
//          leading: Icon(Icons.arrow_back,color: Colors.black,),
//          backgroundColor: Colors.white,
//        ),
//        body:new Container(
//          color: const Color(0xF5F5F5),
//          child: new Column(
//            children: <Widget>[
//              NextItem(itemName:"账户与安全",openNew:()=>{
//
//              }),
//            ],
//          ),
//        ),
//
//        floatingActionButton: FloatingActionButton(
//          onPressed: _incrementCounter,
//          tooltip: 'Increment',
//          child: Icon(Icons.add),
//        ), // This trailing comma makes auto-formatting nicer for build methods.
//      )
//    );
//  }
//}
