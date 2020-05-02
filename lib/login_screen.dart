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
          height: 300,
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
              Padding(
                padding: const EdgeInsets.only(top:5, left: 220),
                child: Text('Forgot Password',
                    style: TextStyle(
                        color: Hexcolor("#2B2D80"),
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 40),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Hexcolor("#2B2D80"))),
                onPressed: () {},
                textColor: Colors.white,
                color: Hexcolor("#2B2D80"),
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 80, right: 80),
                child: const Text('Sign In', style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Sign up here',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              color: Hexcolor('#2B2D80'))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]);
}
