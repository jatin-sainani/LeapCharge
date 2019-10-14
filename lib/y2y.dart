import 'package:flutter/material.dart';

class y2y extends StatefulWidget
{
  _y2y createState()=> _y2y();
}

class _y2y extends State<y2y> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: null),
        actions: <Widget>[
          IconButton(
              icon:Icon( Icons.search),
            onPressed: null,
          ),
        PopupMenuButton<int>(
                itemBuilder: (context) => [
                   PopupMenuItem(
                                  value: 1,
                                   child: Text("First"),
                                  ),
                  PopupMenuItem(
                                value: 2,
                                child: Text("Second"),
                                ),
                                            ],
                               )



        ],


      ),

      backgroundColor: Colors.white,

      body: Column(
        children: <Widget>[

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  ),
                  child: Image.asset('assets/logo.jpg',
                    scale: 3.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:8.0,left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Solitaire Treasue of Time',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    Text('Game insight',
                      style: TextStyle(
                          fontSize: 15.0,
                        color: Color(0xff02865F),
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    Text('Contains ad. In-app purchases',
                      style: TextStyle(
                        color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 10.0
                      ),
                    ),


                  ],
                ),
              )

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.file_download),
              Text('99 MB')


            ],
          ),

//          VerticalDivider(
//            color: Colors.black,
//            width: 10.0,
//          ),


              Container(
                width: 1.0,
                height: 25.0,
                color: Colors.grey,
              ),

          Column(
            children: <Widget>[
              Icon(Icons.person_outline),
              Text('3+')

            ],
          ),

              Container(
                width: 1.0,
                height: 25.0,
                color: Colors.grey,
              ),


          Column(
            children: <Widget>[
              Icon(Icons.file_download),
              Text('99 MB')


            ],
          ),

              Container(
                width: 1.0,
                height: 25.0,
                color: Colors.grey,
              ),


          Column(
            children: <Widget>[
              Icon(Icons.person_outline),
              Text('3+')

            ],
          ),


            ],
          ),


          Padding(
            padding:  EdgeInsets.only(left:20.0,top: 40.0,right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 175.0
                  ,decoration: BoxDecoration(

                    border: Border.all(color: Colors.grey)

                ),

                  child: Center(
                    child: Text(
                      'Try now',
                      style: TextStyle(
                        color: Color(0xff02865F),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),


                Container(
                  height: 40.0,
                  width: 175.0
                  ,decoration: BoxDecoration(
                    color: Color(0xff02865F),
                    border: Border.all(color: Colors.grey)

                ),

                  child: Center(
                    child: Text(
                      'Install',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            height: 275.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
             // mainAxisAlignment: MainAxisAlignment.spaceAround
              children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)
                  )
                  ,child: Image.asset('assets/1.jpg',
              )
              ),

                Container(width: 10.0,),

                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  )
                    ,child: Image.asset('assets/details.png')
                ),

              Container(width: 10.0,),

              ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)
                  )
                  ,child:Image.asset('assets/3.jpg'),
              ),

              ],
            ),
          ),

          Container(

            height: 100,
            color: Colors.white,
            padding: EdgeInsets.only(
                left: 20,

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('About this game',
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                      fontSize: 20.0
                    ),
                    ),

                    IconButton(
                        icon: Icon(Icons.arrow_forward,
                        color: Colors.black,
                        ),
                        onPressed: null)

                  ],
                ),

                Text(
                  'Mind Fitness: Puzzle Card game',
                  style: TextStyle(
                    color: Colors.grey,

                  ),

                ),

              Flexible(
                child: Padding(
                  padding:  EdgeInsets.only(top:15.0),
                  child: Container(
                    decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    height: 40,
                    width: 70,
                    child: Center(
                      child: Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 15.0
                        ),
                      ),
                    ),
                  ),
                ),
              )



              ],
            ),




          ),



        ],
      ),
    );
  }
}