import 'package:flutter/material.dart';
import 'package:smartshoe/home.dart';
import 'package:smartshoe/past.dart';
import 'package:smartshoe/accounts.dart';
import 'package:smartshoe/login.dart';
import 'package:smartshoe/pastRecord.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:smartshoe/route.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        routes: <String,WidgetBuilder>
        {
          'login':(BuildContext context) => login(),
          'route':(BuildContext context) => maps(),
          'home': (BuildContext context) => home(),
          'past': (BuildContext context) => pastRecords(),
          'accounts': (BuildContext context) => accounts(),

        },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home: login()


    );
  }
}