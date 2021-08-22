import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => Saldo(0),
        child: BytebankApp(),
      ),
    );

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[300],
        accentColor: Colors.greenAccent[200],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.greenAccent[200],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
