import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dart:async';


class maps extends StatefulWidget
{
  _mapsstate createState() => _mapsstate();

}

class _mapsstate extends State<maps> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController _mapController;

  static LatLng _center = const LatLng(26.8679438, 73.8183076);
  CameraPosition newPosition = CameraPosition(
    target: _center,
    zoom: 11.0,
  );
  List<Marker> markers = [];

  @override


  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    _mapController = controller;
  }

 /* void _onTap(int index) {
    setState(() {
      print('inside ontap');
      newPosition = CameraPosition(
        target: sellers[index],
        zoom: 11,
      );
      _goToPosition(newPosition);
    });
  }*/


  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 375.0;
    double defaultScreenHeight = 830.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )
      ..init(context);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('LeapCharge'), actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add, color: Colors.white), onPressed: () {
              Navigator.of(context).pushReplacementNamed('add');
            })
          ],),

          drawer: Drawer(
      child: ListView(
      padding: EdgeInsets.zero,


        children: <Widget>[
//            DrawerHeader(
//              child: Center(
//                child: Text('Menu',
//                style: TextStyle(color: Colors.red,
//                fontSize: 50.0),),
//              )
//      ),
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.red),
            accountName: Padding(
              padding:  EdgeInsets.only(top:20.0),
              child: Text("Jatin Sainani",
                style: TextStyle(color: Colors.black,
                    fontSize: 30.0),),
            ),
            accountEmail: Text('js_sainani@yahoo.com',
              style: TextStyle(color: Colors.black,
                  fontSize: 20.0),),
            currentAccountPicture: CircleAvatar(child:
            Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/profileimage.jpg')
                    )
                )
            ),
            ),
          ),

          ListTile(
            title: Text('Home Screen',
              style: TextStyle(
                  fontSize: 20.0
              ),),
            onTap: (){Navigator.of(context).pushReplacementNamed('home');},


          ),

          ListTile(
            title: Text('Your Route',
              style: TextStyle(
                  fontSize: 20.0
              ),),
           // onTap: (){Navigator.of(context).pushReplacementNamed('route');},


          ),

          ListTile(
            title: Text('Past Record',
              style: TextStyle(
                  fontSize: 20.0
              ),),
            onTap: (){Navigator.of(context).pushReplacementNamed('past');},


          ),

          ListTile(
            title: Text('Account',
              style: TextStyle(
                  fontSize: 20.0
              ),
            ),
            onTap: (){Navigator.of(context).pushReplacementNamed('accounts');},


          ),

        ],
      ),
    ),
          body: Stack(
            children: <Widget>[
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: newPosition,
                /*CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),*/
                markers: Set.from(markers),
              ),

            ],
          )
      ),
    );
  }

  Widget box(String veg, String price, int index, String name, String contact) {
    return InkWell(
      onTap: () {
        //_onTap(index);
      },
      child: FittedBox(
        child: Material(
          color: Colors.blue,
          elevation: 11.0,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Stack(
            children: <Widget>[
              Image.asset('assets/cardbg.png'),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: ScreenUtil.instance.setHeight(39),
                  width: ScreenUtil.instance.setWidth(50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil.instance.setHeight(8))),

                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Center(
                            child: Text(veg,
                              style: TextStyle(
                                fontFamily: 'Gothic',
                                fontSize: ScreenUtil.instance.setSp(9),
                              ),
                            ),
                          ),
                          //Padding(padding: EdgeInsets.only(top: 10)),
                          Text(name,
                            style: TextStyle(
                              fontFamily: 'Gothic',
                              fontSize: ScreenUtil.instance.setSp(7),
                            ),
                          ),

                          Text(contact,
                            style: TextStyle(
                              fontFamily: 'Gothic',
                              fontSize: ScreenUtil.instance.setSp(5),
                            ),
                          ),
                          Text(price,
                            style: TextStyle(
                              fontFamily: 'Gothic',
                              fontSize: ScreenUtil.instance.setSp(7),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goToPosition(CameraPosition newPosition) {
    _mapController.animateCamera(
      CameraUpdate.newCameraPosition(newPosition),
    );


    //_mapController
    //  ?.moveCamera(CameraUpdate.newLatLng(LatLng(newPosition.target.latitude, newPosition.target.longitude)));
  }

}

class add extends StatefulWidget
{
  _addstate createState() => _addstate();

}

class _addstate extends State<add>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Add Marker'),),
      body: Column(
        children: <Widget>[
          Text('Name'),
          TextField(),
          Text('Lat,Long'),
          TextField(),
          Text('Vegetable'),
          TextField(),
          Text('Contact'),
          TextField()
        ],
      ),
    );
  }
}
