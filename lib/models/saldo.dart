import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier{
  double valor;

  Saldo(this.valor);

  void addValue(double valor) {
    this.valor += valor;

    notifyListeners();
  }

  void decreaseValue(double valor) {
    this.valor -= valor;

    notifyListeners();
  }

  @override
  String toString() {
    return 'R\$ $valor';
  }
}
