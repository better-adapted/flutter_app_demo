import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Row(
          children: <Widget>[
            Expanded(
                child: Image.asset('assets/map_icon.png'),
              flex: 3,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: Text('3'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.amber,
                child: Text('1'),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Text('click me'),backgroundColor: Colors.amber),
    );
  }
}



