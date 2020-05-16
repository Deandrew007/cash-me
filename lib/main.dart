import 'package:cash_me/accounts.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Me',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Accounts(),
    );
  }
}

