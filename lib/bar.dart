import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class bar extends StatefulWidget
{

  _bar createState()=> _bar();
}

class _bar extends State<bar>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child:
            FloatingSearchBar(

                body: TabBarView(
                  children: <Widget>[
                    new Column(
                      children: <Widget>[new Text("House")],
                    ),
                    new Column(
                      children: <Widget>[new Text("Food")],
                    )
                  ],
                ),
                drawer: Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,


                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),

                      ListTile(
                        title: Text('Upload',
                          style: TextStyle(
                              fontSize: 20.0
                          ),),


                      ),


                      ListTile(
                        title: Text('Cart',
                          style: TextStyle(
                              fontSize: 20.0
                          ),),


                      ),

                      Divider(color: Color(0xffdadada),height: 30.0,),


                      ListTile(
                        title: Text('Logout',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0
                          ),),


                      ),

                    ],
                  ),
                ),
                trailing: Icon(Icons.mic_none),
                children: <Widget>[
                  Scaffold(
                    body: TabBarView(
                      children: <Widget>[
                        new Column(
                          children: <Widget>[new Text("House")],
                        ),
                        new Column(
                          children: <Widget>[new Text("Food")],
                        )
                      ],
                    ),
                  )
                ]
            )
        )
    );
  }
}
