import 'package:flutter/material.dart';

class accounts extends StatefulWidget
{
  _accounts createState()=> _accounts();

}

class _accounts extends State<accounts>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Account',
          style: TextStyle(
            color: Colors.red,
            fontSize: 40.0,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.edit,
          color: Colors.white,), onPressed: null)
        ],
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
                ),
              ),
              onTap: (){Navigator.of(context).pushReplacementNamed('past');},


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
        child:

        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      //shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profileimage.jpg')
                      )
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 320.0,
                height: 60.0,
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  // color: const Color.fromRGBO(247, 64, 106, 1.0),
                  //color: Color(0xff00EF00),
                  //color: Colors.green,
                  color: Colors.blue,
                  borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                ),

                child: new Text(
                  "Jatin Sainani",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 320.0,
                height: 60.0,
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  // color: const Color.fromRGBO(247, 64, 106, 1.0),
                  //color: Color(0xff00EF00),
                  //color: Colors.green,
                  color: Colors.blue,
                  borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                ),

                child: new Text(
                  "js_sainani@yahoo.com",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 320.0,
                height: 60.0,
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  // color: const Color.fromRGBO(247, 64, 106, 1.0),
                  //color: Color(0xff00EF00),
                  //color: Colors.green,
                  color: Colors.blue,
                  borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                ),

                child: new Text(
                  "+917777889167",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 320.0,
                height: 60.0,
                alignment: FractionalOffset.center,
                decoration: new BoxDecoration(
                  // color: const Color.fromRGBO(247, 64, 106, 1.0),
                  //color: Color(0xff00EF00),
                  //color: Colors.green,
                  color: Colors.blue,
                  borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                ),

                child: new Text(
                  '*********',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: (){Navigator.of(context).pushReplacementNamed('login');},
                child: Container(
                  width: 320.0,
                  height: 60.0,
                  alignment: FractionalOffset.center,
                  decoration: new BoxDecoration(
                    // color: const Color.fromRGBO(247, 64, 106, 1.0),
                    //color: Color(0xff00EF00),
                    //color: Colors.green,
                    color: Colors.red,
                    borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                  ),

                  child: new Text(
                    'Logout',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),


    );
  }
}