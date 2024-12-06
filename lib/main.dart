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
      body: Center(
        child: Image.asset('assets/photo3.jpg'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Text('click me'),backgroundColor: Colors.amber),
    );
  }
}



