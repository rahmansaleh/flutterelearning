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
        },
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

              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => new MateriLes()));
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

              Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext) => new TugasLess() ));
            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),

          ),

          new RaisedButton(
            child: new Text(
                "Ujian"
            ),
            onPressed: (){

              Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext) => new UjianLess() ));
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

              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildCotext) => new NilaiLess()),
              );
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

class MateriLes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MateriFul();
  }
}

class MateriFul extends StatefulWidget {
  @override
  _MateriFulState createState() => _MateriFulState();
}

class _MateriFulState extends State<MateriFul> {
  @override
  Widget build(BuildContext context) {

    final main_appar = new AppBar(
      leading: IconButton(icon: new Icon(Icons.arrow_back, color: Colors.white,), onPressed: () => Navigator.of(context).pop()),
      backgroundColor: Colors.blue,
      title: new Text('Materi'),
    );

    final main_body = new Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
      child: new ListView(
        children: <Widget>[

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              new Text(
                'Materi 1',
              ),

              new IconButton(icon: Icon(Icons.file_download), onPressed: (){})
            ],
          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              new Text(
                'Materi 2',
              ),

              new IconButton(icon: Icon(Icons.file_download), onPressed: (){})
            ],
          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              new Text(
                'Materi 3',
              ),

              new IconButton(icon: Icon(Icons.file_download), onPressed: (){})
            ],
          ),


        ],
      ),
    );


    return Scaffold(

      appBar: main_appar,
      body: main_body,
    );
  }
}

class TugasLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TugasFul();
  }
}

class TugasFul extends StatefulWidget {
  @override
  _TugasFulState createState() => _TugasFulState();
}

class _TugasFulState extends State<TugasFul> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      backgroundColor: Colors.blue,
      title: new Text('Tugas'),
      leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,), onPressed: () => Navigator.of(context).pop(),),
      actions: <Widget>[

        FlatButton(
          child: new Text('Save',
            style: TextStyle(
                color: Colors.white,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ],
    );

    final main_body = new Container(
      child: new ListView(
        children: <Widget>[

          new SizedBox(
            height: 20.0,
          ),

          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              new Text(
                '1 + 1 = '
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: "2",
                    onChanged: null,
                  ),
                  new Text(
                    'A. 2',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: "1",
                    onChanged: null,
                  ),
                  new Text(
                    'A. 1',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  new Radio(
                    value: 2,
                    groupValue: "9",
                    onChanged: null,
                  ),
                  new Text(
                    'A. 9',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),

          new SizedBox(
            height: 10.0,
          ),

          new Container(
            color: Colors.grey,
            height: 1.0,
            width: MediaQuery.of(context).size.width,
          ),

          new SizedBox(
            height: 10.0,
          ),

          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              new Text(
                  'Sapi adalah makhluk = '
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: "2",
                    onChanged: null,
                  ),
                  new Text(
                    'A. Herbivora',
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  new Radio(
                    value: 1,
                    groupValue: "1",
                    onChanged: null,
                  ),
                  new Text(
                    'A. Karnivora',
                    style: new TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),

          new SizedBox(
            height: 10.0,
          ),

          new Container(
            color: Colors.grey,
            height: 1.0,
            width: MediaQuery.of(context).size.width,
          ),

          new SizedBox(
            height: 10.0,
          ),

          new RaisedButton(onPressed: (){}, color: Colors.blue, child: new Text('Simpan', style: TextStyle(color: Colors.white),),)


        ],
      ),
    );

    return Scaffold(

      appBar: main_appbar,
      body: main_body,

    );
  }
}

class UjianLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UjianFul();
  }
}

class UjianFul extends StatefulWidget {
  @override
  _UjianFulState createState() => _UjianFulState();
}

class _UjianFulState extends State<UjianFul> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      backgroundColor: Colors.blue,
      title: new Text('Ujian'),
      leading: new IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
    );

    final main_body = new Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: new ListView(
        children: <Widget>[

          new RaisedButton(
            child: new Text(
                "UTS"
            ),
            onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => new UTSLess() ));
            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),

          ),

          new RaisedButton(
            child: new Text(
                "UAS"
            ),
            onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => new UASLes() ));
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

class UTSLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UTSFul();
  }
}

class UTSFul extends StatefulWidget {
  @override
  _UTSFulState createState() => _UTSFulState();
}

class _UTSFulState extends State<UTSFul> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      backgroundColor: Colors.blue,
      title: new Text('UTS'),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,), onPressed: () => Navigator.of(context).pop(),),
    );

    final main_body = new Container(
      child: new Center(
        child: new RaisedButton(
          onPressed: (){},
          color: Colors.blue,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Icon(Icons.file_upload, color: Colors.white,),

              new Text('Upload',
                style: TextStyle(
                    color: Colors.white,
                )
              ),


            ],
          ),
        ),
      ),
    );

    return Scaffold(

      appBar: main_appbar,
      body: main_body,
    );
  }
}

class UASLes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UASFul();
  }
}

class UASFul extends StatefulWidget {
  @override
  _UASFulState createState() => _UASFulState();
}

class _UASFulState extends State<UASFul> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      backgroundColor: Colors.blue,
      title: new Text('UAS'),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,), onPressed: () => Navigator.of(context).pop(),),
    );

    final main_body = new Container(
      child: new Center(
        child: new RaisedButton(
          onPressed: (){},
          color: Colors.blue,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Icon(Icons.file_upload, color: Colors.white,),

              new Text('Upload',
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),


            ],
          ),
        ),
      ),
    );

    return Scaffold(

      appBar: main_appbar,
      body: main_body,
    );

  }
}



class NilaiLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NilaiFUl();
  }
}

class NilaiFUl extends StatefulWidget {
  @override
  _NilaiFUlState createState() => _NilaiFUlState();
}

class _NilaiFUlState extends State<NilaiFUl> {
  @override
  Widget build(BuildContext context) {

    final main_appbar = new AppBar(
      leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.blue,), onPressed: ()=> Navigator.of(context).pop()),
      backgroundColor: Colors.white,
    );

    final main_body = new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[

            new SizedBox(
              height: 50.0,
            ),

            new Text(
              'Nilai Final Anda',
              style: TextStyle(
                fontSize: 24.0
              ),
            ),

            new SizedBox(
              height: 10,
            ),

            new Text(
              '88',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),

            new SizedBox(
              height: 10.0,
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                new Column(
                  children: <Widget>[

                    new Text(
                      'Nilai Tugas',
                      style: TextStyle(
                          fontSize: 22.0
                      ),
                    ),

                    new Text(
                      '90',
                      style: TextStyle(
                          fontSize: 23.0
                      ),
                    ),
                  ],
                ),

                new SizedBox(
                  width: 5.0,
                ),

                new Column(
                  children: <Widget>[

                    new Text(
                      'Nilai UTS',
                      style: TextStyle(
                          fontSize: 22.0
                      ),
                    ),

                    new Text(
                      '90',
                      style: TextStyle(
                          fontSize: 23.0
                      ),
                    ),
                  ],
                ),

                new SizedBox(
                  width: 5.0,
                ),

                new Column(
                  children: <Widget>[

                    new Text(
                      'Nilai UAS',
                      style: TextStyle(
                          fontSize: 22.0
                      ),
                    ),

                    new Text(
                      '86',
                      style: TextStyle(
                          fontSize: 23.0
                      ),
                    ),
                  ],
                ),

              ],
            ),





          ],
        ),
      ),
    );

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: main_appbar,
      body: main_body,
    );
  }
}



