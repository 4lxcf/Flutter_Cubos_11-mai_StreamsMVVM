import 'package:mvvm_basics/home_model.dart';

class HomeController {
  HomeModel _model = HomeModel();

  Future<List<int>> get lista => _model.lista;

  void loadLista() {
    _model.loadLista();
  }
}
