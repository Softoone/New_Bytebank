import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';

class Transfers extends ChangeNotifier {
  final List<Transferencia> _transfers = [];

  List<Transferencia> get transfers => _transfers;
  
  increase(Transferencia newTransfer) {
    transfers.add(newTransfer);
    notifyListeners();
  }
}