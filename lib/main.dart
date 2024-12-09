import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //  List<String> quotes = [
  //    'Be yourself; everyone else is already taken',
  //    'I have nothing to declare except my genius',
  //    'The truth is rarely pure and never simple'
  //  ];

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde1', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde2', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde3', text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        children: quotes.map((quote) {
              var index = quotes.indexOf(quote);
              var temp = index.toInt().toString();
              temp += ' ${quote.text} - ${quote.author}';
              return Text(textAlign: TextAlign.left,temp);
            }).toList()
        )
      );
  }
}



