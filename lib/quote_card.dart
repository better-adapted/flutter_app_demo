import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete_func;
  QuoteCard({required this.quote, required this.delete_func});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Text(
                  quote.text,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  )
              ),
              SizedBox(height: 6.0),
              Text(
                  quote.author,
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[800]
                  )
              ),
              SizedBox(height: 8.0),
              IconButton(
                  icon: const Icon(Icons.delete),
                  tooltip: 'remove quote',
                  onPressed: () { delete_func();},
              )
            ],
          ),
        )
    );
  }
}