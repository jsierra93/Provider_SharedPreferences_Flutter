import 'package:flutter/foundation.dart';

class MyProvider with ChangeNotifier {
  bool _isAutenticado = false;
  String _mitexto = "Provider";
  String get mitexto => _mitexto;
  bool get isAutenticado => _isAutenticado;
  set mitexto(String newTexto) {
    _mitexto = newTexto;
    notifyListeners();
  }

  set isAutenticado(bool newAutenticado) {
    _isAutenticado = newAutenticado;
    notifyListeners();
  }
}
