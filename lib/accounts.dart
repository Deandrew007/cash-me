import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
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
                    padding: const EdgeInsets.only(
                      right: 100.0,
                      top: 5.0,
                    ),
                    child: RichText(
                        text: TextSpan(
                      text: "Hello, ",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Deandrew',
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                      ],
                    )),
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
       margin: EdgeInsets.only(top: 170),
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(48),
            topLeft: Radius.circular(48),
          ),
          color: Colors.grey[200],
        ),
        child: Column(),
  );
}
}
