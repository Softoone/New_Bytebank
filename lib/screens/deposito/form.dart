import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final String _appBarTitle = 'Make a deposit';
final String _hintValueField = '0.00';
final String _labelValueField = 'Value';
final String _textButton = 'Confirm';


class DepositForm extends StatelessWidget {
  DepositForm({Key key}) : super(key: key);

  final TextEditingController _controllerValueField = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              dica: _hintValueField,
              controlador: _controllerValueField,
              rotulo: _labelValueField,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              child: Text(_textButton),
              onPressed: () => _createDeposit(context),
            ),
          ],
        ),
      ),
    );
  }

  _createDeposit(context) {
    final double valor = double.tryParse(_controllerValueField.text);
    final validDeposit = _validateDeposit(valor);

    if(validDeposit) {
      _updateState(context, valor);
      Navigator.pop(context);
    }
  }

  _validateDeposit(valor) {
    final _filledField = valor != null;

    return _filledField;
  }

  _updateState(context,valor) {
    Provider.of<Saldo>(context,listen:false).addValue(valor);
  }

}
