import 'package:bytebank/components/editor.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Receber Depósito";
const _dicaCampoValor = "0.00";
const _rotuloCampoValor = "Valor";
const _textoBotaoConfirmar = "Confirmar";

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
                controlador: _controladorCampoValor,
                dica: _dicaCampoValor,
                rotulo: _rotuloCampoValor,
                icone: Icons.monetization_on),
            ElevatedButton(
              //style: style,
              onPressed: () => _criaDeposito(context),
              child: const Text(_textoBotaoConfirmar),
            )
          ],
        ),
      )
    );
  }

  _criaDeposito(BuildContext context) {
    Navigator.pop(context);
  }
}