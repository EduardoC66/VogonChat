// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChatStore on _ChatStoreBase, Store {
  late final _$mensagemControllerAtom =
      Atom(name: '_ChatStoreBase.mensagemController', context: context);

  @override
  TextEditingController get mensagemController {
    _$mensagemControllerAtom.reportRead();
    return super.mensagemController;
  }

  @override
  set mensagemController(TextEditingController value) {
    _$mensagemControllerAtom.reportWrite(value, super.mensagemController, () {
      super.mensagemController = value;
    });
  }

  late final _$enviarMensagemAsyncAction =
      AsyncAction('_ChatStoreBase.enviarMensagem', context: context);

  @override
  Future<dynamic> enviarMensagem() {
    return _$enviarMensagemAsyncAction.run(() => super.enviarMensagem());
  }

  @override
  String toString() {
    return '''
mensagemController: ${mensagemController}
    ''';
  }
}
