
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[],
          backgroundColor: Colors.lightBlueAccent,
          title: Text('Learning Flutter'),
        ),
        backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('image/passport.jpg'),
            ),
            Text("Oluwasegun ARIYO",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              ),
            ),
            Text("WEB APP DEVELOPER",
              style: TextStyle(
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Source Sans Pro",
              ),
            ),
            Text("(Backend)",
              style: TextStyle(
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Source Sans Pro",
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 155.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text('+234 803 2748 047',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text('oluwasegunayobami7@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Container(
//              width: 100.0,
//              color: Colors.red,
//            ),
////            SizedBox(
////              width: 200.0,
////            ),
//            Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Container(
//                  height: 100.0,
//                  width: 100.0,
//                  color: Colors.yellow,
//                ),
//                Container(
//                  height: 100.0,
//                  width: 100.0,
//                  color: Colors.green,
//                ),
//              ],
//            ),
//            Container(
//              width: 100.0,
//              color: Colors.blue,
//            ),
//          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.home,
          ),
//          onPressed: (){
//            setState((){
//              counts++;
//            });
//          }
        ),
      ),
    );
  }
}


//Padding(
//padding: EdgeInsets.all(10.0),
//child: Row(
//children: <Widget>[
//Icon(
//Icons.email,
//color: Colors.teal,
//),
//SizedBox(
//width: 15.0,
//),
//Text('oluwasegunayobami7@gmail.com',
//style: TextStyle(
//color: Colors.teal.shade900,
//fontSize: 20.0,
//fontFamily: 'Source Sans Pro',
//fontWeight: FontWeight.w400,
//),
//)
//],
//),
//),


//Padding(
//padding: EdgeInsets.all(10.0),
//child: Row(
//children: <Widget>[
//Icon(
//Icons.phone,
//color: Colors.teal,
//),
//SizedBox(
//width: 15.0,
//),
//Text('+234 803 2748 047',
//style: TextStyle(
//color: Colors.teal.shade900,
//fontSize: 20.0,
//fontFamily: 'Source Sans Pro',
//fontWeight: FontWeight.w400,
//),
//)
//],
//),
//),