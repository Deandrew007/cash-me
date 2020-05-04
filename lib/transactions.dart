import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TransactionsPage extends StatefulWidget {
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor("#2B2D80"),
      body: Stack(
        children: <Widget>[
          _buildBody(),
        ],
      ),
      // bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildBody() {
    return Container(
        margin: EdgeInsets.only(top: 200),
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(48),
            topLeft: Radius.circular(48),
          ),
          color: Colors.grey[200],
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      color: Hexcolor("#2B2D80"),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: RichText(
                            text: TextSpan(
                          text: "Sort by ",
                          style: TextStyle(
                              color: Hexcolor("#2B2D80"), fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Recent',
                                style: TextStyle(
                                    color: Hexcolor('#F49825'), fontSize: 18)),
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 100),
                        child: Text(
                          'View All',
                          style: TextStyle(
                            color: Hexcolor("#2B2D80"),
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(30.0)),
                            border: new Border.all(
                                color: Hexcolor("#2B2D80"), width: 3.0)),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/cersei.png"),
                        ),
                      ),
                      title: Text('Cersei Lannister',
                          style: TextStyle(
                            color: Hexcolor("#2B2D80"),
                          )),
                      subtitle: Text(
                        'Buy yourself those elephants',
                      ),
                      trailing: Column(children: [
                        Text('Feb 22, 2020'),
                        Text('Feb 22, 2020'),
                      ]),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 56.0),
                      title: Text('Two-line ListTile'),
                      subtitle: Text('Here is a second line'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
