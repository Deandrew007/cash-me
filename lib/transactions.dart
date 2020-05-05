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
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right:100.0,),
                    child: Text(
                      "Available Balance",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:100.0, top: 5.0,),
                    child: Text(
                      r"$93,712.23",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:50.0, top: 5.0,),
                    child: Text(
                      "Adv Banking Plus-6778",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ]),
                Column(children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: Hexcolor("#F49825"),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/me.jpg'),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
        margin: EdgeInsets.only(top: 190),
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
                        padding: const EdgeInsets.only(top: 5, left: 100),
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
                                color: Hexcolor("#2B2D80"), width: 2.0)),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/Tuwanie.png"),
                        ),
                      ),
                      title: Text('Tuwanie Morgan',
                          style: TextStyle(
                            color: Hexcolor("#2B2D80"),
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text(
                        'You\'re an awesome UI/UX designer! <3',
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(children: [
                          Text(
                            'May 4, 2020',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              r'+$40,000',
                              style: TextStyle(
                                  color: Hexcolor("#3B802B"),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(30.0)),
                            border: new Border.all(
                                color: Hexcolor("#2B2D80"), width: 2.0)),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/annivee.jpg"),
                        ),
                      ),
                      title: Text('Anni-Vee Moore',
                          style: TextStyle(
                            color: Hexcolor("#2B2D80"),
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text(
                        'Food for the month',
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(children: [
                          Text(
                            'April 30, 2020',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              r'-$20,000',
                              style: TextStyle(
                                  color: Hexcolor("#FF2A03"),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                new BorderRadius.all(new Radius.circular(30.0)),
                            border: new Border.all(
                                color: Hexcolor("#2B2D80"), width: 2.0)),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/nigelclarke.jpeg"),
                        ),
                      ),
                      title: Text('Hon. Nigel Clarke',
                          style: TextStyle(
                            color: Hexcolor("#2B2D80"),
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text(
                        'We Care compassionate grant',
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(children: [
                          Text(
                            'May 15, 2020',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              r'+$10,000',
                              style: TextStyle(
                                  color: Hexcolor("#3B802B"),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
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
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text(
                        'Buy yourself those elephants',
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(children: [
                          Text(
                            'May 4, 2020',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              r'-$30,000',
                              style: TextStyle(
                                  color: Hexcolor("#FF2A03"),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
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
