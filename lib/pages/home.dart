import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map memes;
  Widget memeTemplate(meme) {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(meme['imgPath']),
            ),
            //SizedBox(height: 6.0),
            Text(
              meme['title'],
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    memes = ModalRoute.of(context).settings.arguments;
    List memeData = memes['dataObj'];
    print(memeData);
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: ListView(children: memeData.map((meme) => memeTemplate(meme)).toList(),)
      ),
      appBar: AppBar(
          title: Text('Demo App'),
          backgroundColor: Color.fromRGBO(15, 164, 214, .98)),
    );
  }
}