import 'package:firebase_database/firebase_database.dart';
import 'package:vogon_chat/pages/chat/models/mensagem.dart';

class MensagensService {
  Future enviarMensagem(
    String nomeUsuario,
    String nomeContato,
    MensagemModel mensagem,
  ) async {
    final firebaseRef = FirebaseDatabase.instance
        .ref()
        .child('$nomeUsuario/chat/$nomeContato/${mensagem.id}');
  }
}
