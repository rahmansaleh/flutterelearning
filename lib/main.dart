import 'package:flutter/material.dart';
import 'package:flutterelearning/loginregister.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext) => new LoginLess(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}