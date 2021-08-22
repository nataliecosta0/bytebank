import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/deposito/formulario.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bytebank'),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ElevatedButton(
            child: Text("Receber depósito"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FormularioDeposito();
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
