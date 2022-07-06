// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$contatosAtom =
      Atom(name: '_HomeStoreBase.contatos', context: context);

  @override
  ObservableList<String> get contatos {
    _$contatosAtom.reportRead();
    return super.contatos;
  }

  @override
  set contatos(ObservableList<String> value) {
    _$contatosAtom.reportWrite(value, super.contatos, () {
      super.contatos = value;
    });
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void adicionarNovoContato() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.adicionarNovoContato');
    try {
      return super.adicionarNovoContato();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contatos: ${contatos}
    ''';
  }
}
