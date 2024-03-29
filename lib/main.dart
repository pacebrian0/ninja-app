import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text("Ninja ID Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey.shade800,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/ninja.jpg"),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey.shade800,
              ),
              Text(
                "NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Text(
                "Chun-Li",
                style: TextStyle(
                  color: Colors.amberAccent.shade200,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
                height: 30,
              ),
              Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent.shade200,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
                height: 30,
              ),
              Row(
                children: [
                  Icon(Icons.email,
                  color: Colors.grey.shade400,),
                  SizedBox(
                width: 10,
              ),
                  Text(
                    "chun.li@ninja.com",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 18,
                      letterSpacing: 1
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
