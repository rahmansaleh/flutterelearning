import 'package:flutter/material.dart';

class LoginLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginFul();
  }
}

class LoginFul extends StatefulWidget {
  @override
  _LoginFulState createState() => _LoginFulState();
}

class _LoginFulState extends State<LoginFul> {
  @override
  Widget build(BuildContext context) {

    final main_body = new Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
    return Scaffold(
      
      body: main_body,
    );
  }
}