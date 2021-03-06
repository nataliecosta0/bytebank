import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const _tituloAppBar = "Receber Depósito";
const _dicaCampoValor = "0.00";
const _rotuloCampoValor = "Valor";
const _textoBotaoConfirmar = "Confirmar";

class FormularioDeposito extends StatelessWidget {
  final TextEditingController _controladorCampoValor = TextEditingController();

  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15),
      primary: Colors.red[300]
    );

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
                style: style,
                onPressed: () => _criaDeposito(context),
                child: const Text(_textoBotaoConfirmar),
              )
            ],
          ),
        ));
  }

  _criaDeposito(BuildContext context) {
    final double? valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);
    if (depositoValido) {
      _atualizaEstado(context, valor);
      Navigator.pop(context);
    }
  }

  _validaDeposito(valor) {
    final _campoPreenchido = valor != null;
    return _campoPreenchido;
  }

  _atualizaEstado(context, valor){
    Provider.of<Saldo>(context, listen: false).adiciona(valor);
  }
}
