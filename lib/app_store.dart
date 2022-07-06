import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'app_store.g.dart';

class AppStore = _AppStoreBase with _$AppStore;

abstract class _AppStoreBase with Store {
  _AppStoreBase() {
    controllerUsuario.addListener(() {
      usuario = controllerUsuario.text;
    });

    controllerContato.addListener(() {
      contato = controllerContato.text;
    });
  }

  @observable
  TextEditingController controllerUsuario =
      TextEditingController(text: 'Aluno');

  @observable
  TextEditingController controllerContato =
      TextEditingController(text: 'Contato1');

  @observable
  String usuario = 'Aluno';

  @observable
  String contato = 'Contato1';

  @action
  void definirNomeUsuario(String nome) {
    usuario = nome;
    controllerUsuario.text = nome;
  }

  @action
  void definirNomeContato(String nome) {
    contato = nome;
    controllerContato.text = nome;
  }
}
