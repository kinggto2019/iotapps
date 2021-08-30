import 'package:flutter/material.dart';
import 'package:flutterapp/state/authen.dart';

void main() {
  runApp(MyApp());
}

final Map<String, WidgetBuilder> map ={
  '/authen':(BuildContext context) => Authen(),

};
String initRoute ='/authen';
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: map,title: 'IotApp',initialRoute: initRoute,
      
    );
  }
}
