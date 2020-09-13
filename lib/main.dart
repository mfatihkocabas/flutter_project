import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(


        body: new Stack(
          children: <Widget>[
            Container(//Bu container sadece arrow back ikonu için üretilmiştir.
              // width: 170.0,
              // height: 250.0,
              // color: Colors.blue.withOpacity(1.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              height: 150.0,

              child: Row(
                children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(

                      Icons.arrow_back,
                      color: Colors.grey[1],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    ),
                ],
              ),



            ),
            Container(//Bu container sadece create ikonu için üretilmiştir.
             // width: 170.0,
             // height: 250.0,
             // color: Colors.blue.withOpacity(1.0),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 150.0,

              child: Row(
                children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.all(150.0),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Icon(

                      Icons.create,
                      color: Colors.grey[1],
                    ),),
                ],
              ),



            ),
            ClipPath(


              child: Container(color: Colors.blue.withOpacity(0.7),
              ),
              clipper: getClipper(),
            ),
            Positioned(
                width: 400.0,
                top: MediaQuery.of(context).size.height / 3.1,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          image: DecorationImage(
                              image: AssetImage('images/admin2.png',),
                              fit: BoxFit.fitHeight),

                            ),
                    ),
                    SizedBox(height: 5.0,),
                    Text(
                      'Admin',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),

                    SizedBox(height: 10.0),
                    Card(
                        color:Colors.white,
                        margin:EdgeInsets.symmetric(vertical:10,horizontal:20),
                        child: ListTile(
                          leading:Icon(
                            Icons.phone,
                            color:Colors.grey[900],
                          ),

                          title:Text(
                            '05423235692',
                            style:TextStyle(
                              color:Colors.grey[900],
                              fontFamily: 'Source Sans Pro',
                              fontSize: 16.0,
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 0.0),
                    Card(
                      color:Colors.white,
                      margin:EdgeInsets.symmetric(vertical:1,horizontal:20),
                      child: ListTile(
                        leading:Icon(
                          Icons.email,
                          color:Colors.grey[900],
                        ),
                        title: Text(
                          'Adress',
                          style:TextStyle(
                            color:Colors.grey[900],
                            fontFamily: 'Source Sans Pro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ],

        ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 400, 0.0);
    path.close();
    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}