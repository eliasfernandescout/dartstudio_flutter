import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 120,
            child: Image.asset("assets/dartflutterst.png"),
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/flutterninja.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://ap.imagensbrasil.org/images/2019/07/21/fotop.jpg"),
          ),
          title: Text("Elias Fernandes"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/dartclass.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "The lesson above refers to how to install the Flutter SDK in Windows, configure the environment variables and run your first application with the framework. "),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.star),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}