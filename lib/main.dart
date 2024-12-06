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
        child: IconButton(
            onPressed: ()
            {
              print('u clicked me');
            },
            icon: Icon(Icons.alternate_email),
            color: Colors.amber
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Text('click me'),backgroundColor: Colors.amber),
    );
  }
}



