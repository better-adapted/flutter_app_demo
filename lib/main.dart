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

  Widget quoteTemplate(quote)
  {
    return QuoteCard(quote: quote);
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        /*children: quotes.map((quote) {
              var index = quotes.indexOf(quote);
              var temp = index.toInt().toString();
              temp += ' ${quote.text} - ${quote.author}';
              return Text(textAlign: TextAlign.left,temp);
            }).toList()*/
        )
      );
  }
}

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({required this.quote });

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
            ],
          ),
        )
    );
  }
}