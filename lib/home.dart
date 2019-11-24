import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pedometer/pedometer.dart';
import 'dart:async';//


class home extends StatefulWidget
{
  _home createState()=> _home();
}

class _home extends State<home> {

  Pedometer _pedometer;
  StreamSubscription<int> _subscription;
  String _stepCountValue = 'unknown';
  String _Calories='0.045';
  double percent=0.5;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    percent=0.5;
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    startListening();
  }

  void onData(int stepCountValue) {
    print(stepCountValue);
  }

  void startListening() {
    _pedometer = new Pedometer();
    _subscription = _pedometer.pedometerStream.listen(_onData,
        onError: _onError, onDone: _onDone, cancelOnError: true);
  }

  void stopListening() {
    _subscription.cancel();
  }

  void _onData(int stepCountValue)
  async {
    setState(() {
      var Calorie_coeff=0.045;
      _stepCountValue = "${stepCountValue-75000}";
      _Calories="${(stepCountValue-75000)*Calorie_coeff}";
      percent=(stepCountValue-75000)/10000;
      print(percent);
    });

  }

  void _onDone() => print("Finished pedometer tracking");

  void _onError(error) => print("Flutter Pedometer Error: $error");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LeapCharge',
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
              ),),


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
      body: Center(
        child: Column(
          children: <Widget>[
            CircularPercentIndicator(
                radius: 350,
            percent: percent,
            progressColor: Colors.blue,
            lineWidth: 20.0,
            center: Text("${percent*100}%",style:
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

              Text('$_stepCountValue',
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

                Text('$_Calories',
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
