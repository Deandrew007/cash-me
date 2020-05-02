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
      body: _buildBody(),
      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildBody() {
    return Container(
        margin: EdgeInsets.only(top: 56),
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(48),
              topLeft: Radius.circular(48),
            ),
            color: Hexcolor("#EAEAEA")),
        child: ListView(children: const <Widget>[
          Card(
      child: ListTile(
        leading: FlutterLogo(size: 72.0),
        title: Text('Three-line ListTile'),
        subtitle: Text(
          'A sufficiently long subtitle warrants three lines.'
        ),
        trailing: Icon(Icons.more_vert),
        isThreeLine: true,
      ),
    ),
        ]));
  }

  Widget _buildNavBar() {
    return Container();
  }
}
