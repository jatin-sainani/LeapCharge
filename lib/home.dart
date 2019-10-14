import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class home extends StatefulWidget
{
  _home createState()=> _home();
}

class _home extends State<home> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Piezoshoe',
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
                padding:  EdgeInsets.only(top:25.0,bottom: 20.0),
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


            ),

            ListTile(
              title: Text('Past Record',
                style: TextStyle(
                    fontSize: 20.0
                ),),


            ),

            ListTile(
              title: Text('Account',
                style: TextStyle(
                    fontSize: 20.0
                ),),


            ),

          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CircularPercentIndicator(
                radius: 350,
            percent: 0.65,
            progressColor: Colors.blue,
            lineWidth: 20.0,
            center: Text('65%',style:
              TextStyle(color: Colors.blue,
              fontSize:75.0,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.red,),

            Padding(padding: EdgeInsets.only(top: 50.0,)),

            Text('Steps Taken',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0
              ),
            ),

              Text('6500',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0
                ),

            ),

            Padding(padding: EdgeInsets.only(top: 55.0,)),


            Column(
              children: <Widget>[
                Text('Calories Burned',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30.0,
                  ),
                ),

                Text('200Kcal',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0
                  ),

                )
              ],
            )
          ],
        )
// Container(
//          height: 160.0,
//          width: 160.0,
//          decoration: BoxDecoration(
//            color: Colors.red,
//              borderRadius: BorderRadius.all(Radius.circular(80.0))
//          ),
//        ),
      ),


    );
  }
}
