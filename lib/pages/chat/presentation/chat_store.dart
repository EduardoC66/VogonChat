import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
import 'package:vogon_chat/app_store.dart';
import 'package:vogon_chat/pages/chat/models/mensagem.dart';
import 'package:vogon_chat/pages/chat/services/mensagens_service.dart';
part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;

abstract class _ChatStoreBase with Store {
  final service = MensagensService();
  final appStore = GetIt.I.get<AppStore>();

  @observable
  TextEditingController mensagemController = TextEditingController(text: '');

  @action
  Future enviarMensagem() async {
    if (mensagemController.text.isNotEmpty) {
      await service.enviarMensagem(
        appStore.usuario,
        appStore.contato,
        MensagemModel(
          id: const Uuid().v4(),
          mensagem: mensagemController.text,
          dataHoraEnvio: DateTime.now(),
          nomeEnvio: appStore.usuario,
        ),
      );
    }
  }
}
