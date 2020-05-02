import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor("#F4981C"),
      body: Stack(children: <Widget>[
        _buildlayout(),
      ]),
    );
  }
}

Widget _buildlayout() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 325,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
              80,
            )),
            color: Hexcolor("#2B2D80"),
          ),
          child: Image.asset("assets/images/undraw_transfer_money.png"),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "username",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Hexcolor("#2B2D80"),
                            style: BorderStyle.solid,
                          )),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Hexcolor("#2B2D80"),
                            style: BorderStyle.solid,
                          )),
                    ),
                  )),
              SizedBox(height: 40, width: 80,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Hexcolor("#2B2D80"))
                ),
                onPressed: () {},
                textColor: Colors.white,
                color: Hexcolor("#2B2D80"),
                child: const Text('Sign In',
                    style: TextStyle(fontSize: 20)),
              ),
              ),
           
            ],
          ),
        ),
      ]);
}
