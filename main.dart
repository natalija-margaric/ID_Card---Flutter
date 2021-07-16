import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: NinjaCard(),
      ),
    );

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() =>
      _NinjaCardState(); //this is object _NinjaCardState
}

class _NinjaCardState extends State<NinjaCard> {
  int currentLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My ID Card'),
        centerTitle: true, //true or false
        backgroundColor: Colors.grey[850], //ctrl+q
        elevation: 0.0, //makne shadow sa appbara
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/slika2.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ), //space between two different widgets, easier and faster one
            Text(
              'Natalija',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //--------------------------------------------------------------------------
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ), //space between two different widgets verticaly, easier and faster one
            Text(
              '$currentLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //--------------------------------------------------------------------------
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0, //for horizontal space, faster and easier
                ),
                Text(
                  'natalija@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
