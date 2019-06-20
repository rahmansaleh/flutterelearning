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

    final main_body = new Container(
      child: new Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
        child: new Column(
          children: <Widget>[

            new SizedBox(
              height: 20.0,
            ),
            
            new TextFormField(
              maxLines: 1,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Username',
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              validator: (value){

                if( value.trim().isEmpty) {
                  return "Please input Username";
                }
              }, 
            ),

            new SizedBox(
              height: 10.0,
            ),

            new TextFormField(
              maxLines: 1,
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              validator: (value){

                if( value.trim().isEmpty) {
                  return "Please input Password";
                }
              }, 
            ),

            new SizedBox(
              height: 20.0,
            ),

            new MaterialButton(
              onPressed: (){},
              height: 40.0,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: new Text(
                'Login',
                style: TextStyle(
                  color: Colors.white
                ),
              ),

            ),

            new FlatButton(
              child: new Text(
                'Register here',
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              onPressed: (){

                Navigator.of(context).push(

                  MaterialPageRoute(builder: (BuildContext) => RegisterLess()),
                );
              },
            )

          ],
        ),
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: main_body,
      ),
    );

    return Scaffold(
      
      
      body: main_body,
    );
  }
}

class RegisterLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterFul();
  }
}

class RegisterFul extends StatefulWidget {
  @override
  _RegisterFulState createState() => _RegisterFulState();
}

class _RegisterFulState extends State<RegisterFul> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      backgroundColor: Colors.blue,
      leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.close,
        ),
      ),
    );

    final main_body = new Container(
      child: new Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
        child: new Column(
          children: <Widget>[

            new SizedBox(
              height: 20.0,
            ),
            
            new TextFormField(
              maxLines: 1,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Username',
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              validator: (value){

                if( value.trim().isEmpty) {
                  return "Please input Username";
                }
              }, 
            ),

            new SizedBox(
              height: 10.0,
            ),

            new TextFormField(
              maxLines: 1,
              autofocus: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Full Name',
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              validator: (value){

                if( value.trim().isEmpty) {
                  return "Please input Full Name";
                }
              }, 
            ),

            new SizedBox(
              height: 10.0,
            ),

            new TextFormField(
              maxLines: 1,
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              validator: (value){

                if( value.trim().isEmpty) {
                  return "Please input Password";
                }
              }, 
            ),

            new SizedBox(
              height: 10.0,
            ),

            new TextFormField(
              maxLines: 1,
              autofocus: false,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Retype Password',
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
              validator: (value){

                if( value.trim().isEmpty) {
                  return "Please input retype Password";
                }
              }, 
            ),

            new SizedBox(
              height: 20.0,
            ),

            new MaterialButton(
              onPressed: (){},
              height: 40.0,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: new Text(
                'Register',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),

          ],
        ),
      ),
    );

    return Scaffold(

      appBar: main_appbar,
      body: main_body,
      
    );
  }
}