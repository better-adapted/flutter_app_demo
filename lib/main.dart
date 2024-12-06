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
      body: Padding(padding: EdgeInsets.all(90.0),
      child: Text('hello'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Text('click me'),backgroundColor: Colors.amber),
    );
  }
}



