import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/animation.dart';
import 'package:smartshoe/loginanimation.dart';
class login extends StatefulWidget
{
  _loginstate createState() => new _loginstate();


}

class _loginstate extends State<login> with TickerProviderStateMixin {

  AnimationController _loginButtonController;
  var animationStatus = 0;
  var animationStatus2=0;

  @override
  void initState() {
    super.initState();
    _loginButtonController = new AnimationController(
        duration: new Duration(milliseconds: 3000), vsync: this);
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      await _loginButtonController.forward();
      await _loginButtonController.reverse();
    } on TickerCanceled {}
  }

  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text('Are you sure?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () =>
                Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (

        new WillPopScope(
            onWillPop: _onWillPop,
            child: new Scaffold(
                body: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: new Container(

                      decoration: new BoxDecoration(
                          color: Colors.black),
                      child: new ListView(
                        padding: const EdgeInsets.all(0.0),
                        children: <Widget>[

                          new Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 100.0 ),
                                    child: new Container(
                                        width: 300.0,
                                        height: 200.0,
                                        alignment: Alignment.center,
                                        decoration: new BoxDecoration(
                                          border: new Border(
                                              top: new BorderSide(
                                                color: Colors.blue,
                                                 // color: const Color.fromRGBO(20, 159, 69, 1.0),
                                                  // color: new Color.fromARGB(255, 30, 255, 30),
                                                  width: 4.0)),

                                          borderRadius: BorderRadius.all(Radius.circular(50.0)),

                                          image: DecorationImage(
                                            image: AssetImage('assets/logo.jpeg'),
                                            fit:BoxFit.fitHeight,





                                          ),

                                        )),
                                  ),

                                  //Tick
                                  Padding(
                                    padding: const EdgeInsets.only(top:100.0),
                                    child: new Container(
                                      margin: new EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: new Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceEvenly,
                                        children: <Widget>[
                                          new Form(
                                              child: new Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: <Widget>[
                                                  new TextFormField(


                                                    decoration: InputDecoration(
                                                      hintText: "Username",
                                                      hintStyle: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                      icon: Icon(Icons.person, color: Colors.white,),

                                                    ),
                                                    style: TextStyle(color: Colors.white,
                                                        fontSize: 20.0),
                                                    obscureText: false,
                                                  ),
                                                  new SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  new TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText: "Password",
                                                      hintStyle: TextStyle(
                                                          color: Colors.white
                                                      ),
                                                      icon: Icon(Icons.lock, color: Colors.white,),



                                                    ),
                                                    style: TextStyle(color: Colors.white,
                                                        fontSize: 20.0),
                                                    obscureText: true,
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  ), //form


                                  new FlatButton(
                                    padding: const EdgeInsets.only(
                                      top: 160.0,
                                    ),
                                    onPressed: ()=> debugPrint("halwa"),
                                    splashColor: Colors.red,
                                    //splashColor: const Color.fromRGBO(20, 159, 69, 1.0),
                                    //splashColor: Color(0xff00EF00),
                                    child: new Text(
                                      "Don't have an account? Sign Up",
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 0.5,
                                          color: Colors.white,
                                          fontSize: 12.0),
                                    ),
                                  ) //sign

                                ],
                              ),
                              animationStatus == 0
                                  ? new Padding(
                                  padding: const EdgeInsets.only(bottom: 55.0),
                                  child: new InkWell(
                                      onTap: ()
                                      {
                                        setState(() {
                                          animationStatus = 1;
                                        });
                                        _playAnimation();
                                        //Navigator.of(context).pushReplacementNamed('recent');

                                      },
                                      child:
                                      new Container(
                                        width: 320.0,
                                        height: 60.0,
                                        alignment: FractionalOffset.center,
                                        decoration: new BoxDecoration(
                                          // color: const Color.fromRGBO(247, 64, 106, 1.0),
                                         // color: const Color.fromRGBO(20, 159, 69, 1.0),
                                          //color: Color(0xff00EF00),
                                          color: Colors.blue,
                                          borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                                        ),

                                        child: new Text(
                                          "Sign In",
                                          style: new TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.3,
                                          ),
                                        ),
                                      )
                                  )
                              )
                                  : new StaggerAnimation(
                                  buttonController:
                                  _loginButtonController.view),

                            ],

                          )

                        ],
                      )
                  ),
                )))
    );
  }
}