import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/form.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DepositForm()));
                  },
                  child: Text('Deposit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormularioTransferencia()));
                  },
                  child: Text('New Transfer'),
                ),
              ]),
        ],
      ),
    );
  }
}
