import 'package:flutter/material.dart';

class HomeLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeFul();
  }
}

class HomeFul extends StatefulWidget {
  @override
  _HomeFulState createState() => _HomeFulState();
}

class _HomeFulState extends State<HomeFul> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      backgroundColor: Colors.blue,
      title: new Text(
        'List Mata Pelajaran',
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );

    final main_body = new Container(
      child: new ListView(
        children: <Widget>[

          new SizedBox(
            height: 20.0,
          ),

          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: new Row(

              children: <Widget>[

                new RaisedButton(
                  child: new Text(
                    "IPA"
                  ),
                  onPressed: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext) => new DetailMataPelLess(
                        matpel: "IPA",
                      )),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),

                ),

                new RaisedButton(
                  child: new Text(
                      "IPS"
                  ),
                  onPressed: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext) => new DetailMataPelLess(
                        matpel: "IPS",
                      )),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),

                ),

                new RaisedButton(
                  child: new Text(
                      "PKN"
                  ),
                  onPressed: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext) => new DetailMataPelLess(
                        matpel: "PKN",
                      )),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),

                ),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),

          new SizedBox(
            height: 15.0,
          ),

          new Row(

            children: <Widget>[

              new RaisedButton(
                child: new Text(
                    "Matematika"
                ),
                onPressed: (){

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),

              new RaisedButton(
                child: new Text(
                    "Bahassa Inggris"
                ),
                onPressed: (){

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),

              new RaisedButton(
                child: new Text(
                    "Biologi"
                ),
                onPressed: (){

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),

            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),

          new SizedBox(
            height: 15.0,
          ),

          new Row(

            children: <Widget>[

              new RaisedButton(
                child: new Text(
                    "Fisika"
                ),
                onPressed: (){

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),

              new RaisedButton(
                child: new Text(
                    "Kimia"
                ),
                onPressed: (){

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),

              new RaisedButton(
                child: new Text(
                    "TIK"
                ),
                onPressed: (){

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),

              ),

            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),

        ],
      ),
    );

    final main_drawer = new Drawer(
      child: new ListView(
        children: <Widget>[

          new ListTile(
            title: new Text(
              'Profil'
            ),
            onTap: (){

              Navigator.of(context).pop();
            },
          ),

          new ListTile(
            title: new Text(
                'Nilai'
            ),
            onTap: (){

              Navigator.of(context).pop();
            },
          ),

          new ListTile(
            title: new Text(
                'Daftar Guru'
            ),
            onTap: (){

              Navigator.of(context).pop();
            },
          ),

          new ListTile(
            title: new Text(
                'Informasi'
            ),
            onTap: (){

              Navigator.of(context).pop();
            },
          ),

          new ListTile(
            title: new Text(
                'Ubah Password'
            ),
            onTap: (){

              Navigator.of(context).pop();
            },
          ),

          new ListTile(
            title: new Text(
                'Log Out'
            ),
            onTap: (){

              Navigator.of(context).pop();
            },
          ),

        ],
      ),
    );

    return SafeArea(
      child: Scaffold(

        drawer: main_drawer,
        appBar: main_appbar,
        body: main_body,

      ),
    );
  }
}

class DetailMataPelLess extends StatelessWidget {

  String matpel;
  DetailMataPelLess({Key key, this.matpel}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailMatPelFul(matpel: matpel,);
  }
}

class DetailMatPelFul extends StatefulWidget {

  String matpel;

  DetailMatPelFul({Key key, this.matpel}):super(key: key);

  @override
  _DetailMatPelFulState createState() => _DetailMatPelFulState(matpel: matpel);
}

class _DetailMatPelFulState extends State<DetailMatPelFul> {

  String matpel = "";

  _DetailMatPelFulState({this.matpel});

  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      leading: new IconButton(
        icon: Icon(
          Icons.arrow_back
        ),
        onPressed: (){

          Navigator.of(context).pop();
        }
      ),
      title: new Text(
        matpel,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blue,
    );

    final main_body = new Container(

      child: new ListView(
        children: <Widget>[

          new RaisedButton(
            child: new Text(
                "Materi"
            ),
            onPressed: (){

            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),

          ),

          new RaisedButton(
            child: new Text(
                "Tugas"
            ),
            onPressed: (){

            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),

          ),

          new RaisedButton(
            child: new Text(
                "Nilai"
            ),
            onPressed: (){

            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),

          ),
        ],
      ),
    );
    return Scaffold(

      appBar: main_appbar,
      body: main_body,
    );
  }
}

