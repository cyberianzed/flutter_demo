import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Hello Me !'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 45.0,
              )),
              Divider(
                height: 50.0,
                color: Colors.purple,
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              Text('NAME',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text('Jose K James',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              // SizedBox(
              //   height: 20.0,
              // ),
              Container(
                //padding: EdgeInsets.all(30.0),
                margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text('Current Level',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                    )),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              Row(children: <Widget>[
                Icon(
                  Icons.leaderboard,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text('$level',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      letterSpacing: 2.0,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
              Container(
                padding: EdgeInsets.all(30.0),
                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              ),
            ]),
      ),
    );
  }
}
