// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on _AppStoreBase, Store {
  late final _$controllerUsuarioAtom =
      Atom(name: '_AppStoreBase.controllerUsuario', context: context);

  @override
  TextEditingController get controllerUsuario {
    _$controllerUsuarioAtom.reportRead();
    return super.controllerUsuario;
  }

  @override
  set controllerUsuario(TextEditingController value) {
    _$controllerUsuarioAtom.reportWrite(value, super.controllerUsuario, () {
      super.controllerUsuario = value;
    });
  }

  late final _$controllerContatoAtom =
      Atom(name: '_AppStoreBase.controllerContato', context: context);

  @override
  TextEditingController get controllerContato {
    _$controllerContatoAtom.reportRead();
    return super.controllerContato;
  }

  @override
  set controllerContato(TextEditingController value) {
    _$controllerContatoAtom.reportWrite(value, super.controllerContato, () {
      super.controllerContato = value;
    });
  }

  late final _$usuarioAtom =
      Atom(name: '_AppStoreBase.usuario', context: context);

  @override
  String get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(String value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$contatoAtom =
      Atom(name: '_AppStoreBase.contato', context: context);

  @override
  String get contato {
    _$contatoAtom.reportRead();
    return super.contato;
  }

  @override
  set contato(String value) {
    _$contatoAtom.reportWrite(value, super.contato, () {
      super.contato = value;
    });
  }

  late final _$_AppStoreBaseActionController =
      ActionController(name: '_AppStoreBase', context: context);

  @override
  void definirNomeUsuario(String nome) {
    final _$actionInfo = _$_AppStoreBaseActionController.startAction(
        name: '_AppStoreBase.definirNomeUsuario');
    try {
      return super.definirNomeUsuario(nome);
    } finally {
      _$_AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void definirNomeContato(String nome) {
    final _$actionInfo = _$_AppStoreBaseActionController.startAction(
        name: '_AppStoreBase.definirNomeContato');
    try {
      return super.definirNomeContato(nome);
    } finally {
      _$_AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controllerUsuario: ${controllerUsuario},
controllerContato: ${controllerContato},
usuario: ${usuario},
contato: ${contato}
    ''';
  }
}
