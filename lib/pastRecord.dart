import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import 'past.dart';

class pastRecords extends StatefulWidget
{
  _pastRecords createState()=> _pastRecords();

}

class _pastRecords extends State<pastRecords>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Records',
          style: TextStyle(
            color: Colors.red,
            fontSize: 40.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
//        leading: IconButton(
//            icon: Icon(Icons.format_align_justify,
//              color: Colors.red),
//            onPressed:null),
      ),

      backgroundColor: Colors.black,
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
                ),
              ),
              onTap: (){Navigator.of(context).pushReplacementNamed('home');},


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
                ),),
              onTap: (){Navigator.of(context).pushReplacementNamed('accounts');},


            ),

          ],
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SimpleBarChart.withSampleData(),
      )
      /*Center(
        child: FittedBox(

          child: Image.asset('assets/blank(1).png',),
          fit: BoxFit.cover,
        ),
      )*/




    );
  }
}