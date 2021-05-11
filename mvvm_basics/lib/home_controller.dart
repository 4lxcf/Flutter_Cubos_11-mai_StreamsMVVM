import 'dart:async';

import 'package:mvvm_basics/home_model.dart';

class HomeViewModel {
  HomeModel _model = HomeModel();

  Future<List<int>> get lista => _model.lista;

  StreamController<List<int>> streamController = StreamController();

  void loadLista() {
    _model.loadLista();
    _model.lista.then((value) => streamController.add(value));
  }
}
